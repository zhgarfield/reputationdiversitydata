## code to prepare `reputationdata` dataset

# Load libraries ----------------------------------------------------------
library(tidyverse)
library(readxl)
library(stringi)
library(tidytext)
library(textstem)

# Read data ---------------------------------------------------------------

### Raw data of paragraphs and researcher coded measures
data_raw <- read.csv("data-raw/data_raw_package.csv")

### Add female coauthorship data
data_fem_author <- read.csv("data-raw/female_authorship_data.csv")

data_raw <- left_join(data_raw, data_fem_author)

### Culture level data includes IDs from eHRAF, SCCS, and EA as well as subsistence and region meta-data.
### Also includes a count of documents per culture.
data_culture <- read.csv("data-raw/Data_culture.csv")


### Read and add language family data from Ethnographic Atlas variable (001)
ea_language <- read_csv("data-raw/Subsistence economy_gathering EA001.csv")
ea_language <- ea_language %>%
  mutate(EA_ID = society_id) %>%
  mutate(subsistence_gather = as.numeric(code)) %>%
  select(c("EA_ID", "language_family"))

### Add to data_culture
data_culture <- left_join(data_culture, ea_language)

## Adding missing language family data
data_culture$language_family[data_culture$culture_ID=="oi20"]="Tiwi"
data_culture$language_family[data_culture$culture_ID=="nn16"]="Muskogean"
data_culture$language_family[data_culture$culture_ID=="nr10"]="Klamath"
data_culture$language_family[data_culture$culture_ID=="nt23"]="Zuni"
data_culture$language_family[data_culture$culture_ID=="rx02"]="Paleosiberian"
data_culture$language_family[data_culture$culture_ID=="sh06"]="Yahgan"
data_culture$language_family[data_culture$culture_ID=="ss18"]="Warao"

### Read eHRAF meta data
eHRAF_metadata <- read_xlsx("data-raw/eHRAF-World-Cultures_All.xlsx") %>%
  mutate(culture_ID = `OWC Code`) %>%
  select(c("culture_ID", "N_docs", "N_pages"))

### Add to data_culture
data_culture <- left_join(data_culture, eHRAF_metadata)



# Data processing ---------------------------------------------------------

# Extract document publication year from reference data
data_raw$publication_year <- stri_extract_first_regex(data_raw$Reference, "[0-9]+")
## Fix errors
data_raw$publication_year[data_raw$text_ID=="e897aa8c78"]="1950"
data_raw$publication_year[data_raw$text_ID=="d8896f8b6b"]="1890"
data_raw$publication_year <- as.numeric(data_raw$publication_year)

#Create named list of variables
vars <- names(data_raw)[3:22]

#Create named list of variables which include data coded as female-specfic
vars_female <- names(data_raw)[c(3,4,6:21)]

# Create data set types ---------------------------------------------------

### Data basic -- researcher coded measures as 1s and 0s

#Create a basic data frame of evidence for (1) and no evidence (0), ignoring gender coding
data_basic <- data_raw %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("NEUTRAL"), 1, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("MALE"), 1, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("FEMALE"), 1, .))) %>%
  mutate_at(.vars = vars, funs(as.numeric(.)))

#NAs are not meaningful here. NA in data_raw is no evidence. Set NAs to 0
data_basic[is.na(data_basic)==TRUE] = 0

#Create a data frame of MALE evidence for (1) and no evidence (0)
data_basic_male <- data_raw %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("NEUTRAL"), 0, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("MALE"), 1, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("FEMALE"), 0, .))) %>%
  mutate_at(.vars = vars, funs(as.numeric(.)))

data_basic_male[is.na(data_basic_male)==TRUE] = 0
data_basic_male$sex <- "Male"

#Create a data frame of FEMALE evidence for (1) and no evidence (0)
data_basic_female <- data_raw %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("NEUTRAL"), 0, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("MALE"), 0, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("FEMALE"), 1, .))) %>%
  mutate_at(.vars = vars, funs(as.numeric(.)))

data_basic_female[is.na(data_basic_female)==TRUE] = 0
data_basic_female$sex <- "Female"

### No data for female reputations for HONESTY or BRAVERY, dropping here.
data_basic_female <- data_basic_female %>%
  select(-c(honesty, bravery))

#Create a data frame of NEUTRAL evidence for (1) and no evidence (0)
data_basic_neutral <- data_raw %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("NEUTRAL"), 1, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("MALE"), 0, .))) %>%
  mutate_at(.vars = vars, funs(ifelse(.== c("FEMALE"), 0, .))) %>%
  mutate_at(.vars = vars, funs(as.numeric(.)))

data_basic_neutral[is.na(data_basic_neutral)==TRUE] = 0
data_basic_neutral$sex <- "Neutral"

#Join male and female data to one data frame with the gender coding
data_basic_genders <- full_join(data_basic_male, data_basic_female)

#Join male and female data to one data frame -- Alternate with male vs female vs netural (i.e., no all data)
data_basic_genders_alt <- full_join(data_basic_genders, data_basic_neutral)


### Culture level data

# Create map data
data_culture_map <- data_culture %>%
  select("Name",
         "longitude",
         "latitude",
         "n",
         "Subsistence.Type",
         "culture_ID")

# Document term matrix ---------------------------------------------------------------------

## Data frame for text analysis
## Create DTM
text_records <- data_raw %>%
  dplyr::select(c("text_ID", "document_ID", "Text"))

reputation_words <-
  text_records %>%
  dplyr::select(text_ID, Text) %>%
  mutate(
    Text = iconv(Text, "", "UTF-8"),
    Text = str_replace(Text, "’", "'") # Switch ’ to '
  ) %>%
  unnest_tokens(word, Text) %>%
  mutate(
    word = str_to_lower(word),
    word = str_replace(word, "'s", "")
  ) %>%
  dplyr::filter(!str_detect(word, "\\d+")) %>%
  dplyr::filter(!str_detect(word, "reputation")) %>%
  dplyr::filter(!str_detect(word, 'page')) %>%
  anti_join(stop_words) %>%
  dplyr::filter(str_count(word) > 2 | word == 'ox') %>%
  mutate(lemma = lemmatize_words(word))

# document-term matrix
reputation_dtm <-
  reputation_words %>%
  dplyr::select(text_ID, lemma) %>%
  group_by(text_ID, lemma) %>%
  summarise(count = n()) %>%
  spread(lemma, count, fill = 0) %>%
  select(-c("4","6","7","13","17","18","19","20")) %>%
  ungroup

# Create vector of word sums per document for descriptive reporting
word_sums <- rowSums(reputation_dtm[,2:8770])










# End of the line
usethis::use_data(data_raw,
                  data_basic,
                  data_basic_female,
                  data_basic_male,
                  data_basic_neutral,
                  data_culture,
                  text_records,
                  reputation_dtm,
                  reputation_words,
                  overwrite = TRUE)
