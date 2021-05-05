#' @title data_raw
#' @description Original consensus data on researcher-coded variables, raw ethnographic text and identifiers. Reputation domains coded as "female", "male", or "neutral" with NA equal to no evidence. See text for details.
#' @format A data frame with 319 rows and 25 variables:
#' \describe{
#'   \item{\code{Reference}}{character Bibliographic refernce for ethnographic text.}
#'   \item{\code{Text}}{character Raw text used to code variables.}
#'   \item{\code{cooperation}}{character Reputations based on willingness, experience, capacities, or the likelihood one individual will (or will not) intentionally work together with or assist another individual or group or contribute to the efforts of another individual or group in order to achieve a joint goal or outcome.}
#'   \item{\code{prosociality}}{character Reputations based on an individual's willingness, experience, capacities or the likelihood they will (or will not) invest in group welfare or act in group-altruistic ways (which is not captured by “Cooperation”, i.e., non-cooperation based prosociality or characteristics such as friendliness). Includes individual investment, behaviors, or emotional disposition.}
#'   \item{\code{honesty}}{character Reputations for the quality of being honest or not lying or intentionally deceiving others (as well as those dispossessing this trait).}
#'   \item{\code{cultural_conformity}}{character Reputations based on excelling at, consistently demonstrating, or embodying skills or qualities preferentially valued within a particular cultural or social context. Includes culturally appropriate, preferred, and prescribed behaviors (e.g. willingness or ability to follow norms). (includes individuals who disposses this trait).}
#'   \item{\code{industriousness}}{character Reputations based on productive outputs from activities such as subsistence and other economic efforts, domestic work, recreational accomplishments, etc., including past and current productivity (includes individuals who disposses this trait). These reputations are based on the outputs of such efforts and not the capacities, per se, i.e., reputations for delivering hunted meat (not the ability to hunt), reputations for cleaning the house (not the ability to clean the house), reputations for earning wages (not the ability to perform a task within a wage labor context), reputations for producing cultivated foods (not the reputation for being a knowledgeable farmer/gardener).}
#'   \item{\code{coercive_ability}}{character Reputations based on others fear, threats, or intimidation rooted in power-imbalances and differences in physical formidability, and when these actions are associated with greater access to contested resources and/or social influence and control(includes individuals who disposses this trait). }
#'   \item{\code{agressiveness}}{character Reputations for a propensity to act aggressively and agonistically, though which may not include control or influence (includes individuals who disposses this trait).}
#'   \item{\code{social_status}}{character Reputations for high social status, prestigiousness, or esteem (or their opposite). Includes “global” social status, conceived broadly and likely dependent on multiple criteria. Separate from “Dominance” reputations.}
#'   \item{\code{parental_care}}{character Reputations for being a good parent, successfully raising many/quality children, and/or investing a lot of time, resources, and energy in raising children. (includes individuals who disposses this trait).}
#'   \item{\code{sociosexuality}}{character Reputations for having many sexual partners and/or willingness to engage in sexual activity or develop sexual/romantic relationships outside of marriage (includes individuals who disposses this trait).}
#'   \item{\code{sexual_fidelity}}{character Reputations for fidelity, sexual exclusivity, and maintaining physical committedness within a marriage or sexual relationships. (includes individuals who disposses this trait).}
#'   \item{\code{somatic_capital}}{character Reputations for beneficial and positive physiological traits including healthiness, strength, agility and dexterity, etc.}
#'   \item{\code{neural_capital}}{character Reputations for cognitive and neural-based dimensions of somatic or embodied capital, including reputations for generalized or specialized intelligence, special knowledge, cognitive abilities, decision-making capacities, etc.}
#'   \item{\code{social_capital}}{character Reputations for having a strong social network and social support including having many social partners or allies and having social partners or allies who are of high quality (defined broadly).}
#'   \item{\code{material_capital}}{character Reputations for having high levels of material wealth, including all forms of material wealth and currencies, such as money, territory, prestige goods, property, having food reserves, and other material resources.}
#'   \item{\code{supernatural_ability}}{character Reputations for having supernatural abilities and capacities beyond “normal” abilities, including capacities rooted in physical displays with an important supernatural component (such as trance) or other non-physical abilities (augury, supernatural abilities in ritual, magic, etc.). This can include healing related to supernatural agency(ies).}
#'   \item{\code{medicine}}{character Reputations for having (or not having) knowledge and ability to heal the self and others through naturalistic means.}
#'   \item{\code{teaching}}{character Reputations for being a good teacher including all forms of teaching, defined as an informed individual modifying their behavior for the learning benefit of a naive individual. Includes capacities to train and transmit specialized or generalized information. (includes individuals who disposses this trait).}
#'   \item{\code{oration}}{character Reputations for having (or not having) a superior ability to use language or other forms of vocalization in public and private contexts.}
#'   \item{\code{bravery}}{character Reputations for the ability or disposition to voluntarily act when facing personal risk (in terms of agony, pain, loss, danger, uncertainty, or intimidation) in pursuit of a worthy goal, often in the face of fear. (synonyms: valor and courage). (includes individuals who do not possess this trait).}
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{document_ID}}{character The HRAF document ID for each source document.}
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'   \item{\code{female_coauthorship}}{integer Presence of female coauthor, coded as 0 for female coauthor absent 1 for female coauthor present.}
#'   \item{\code{publication_year}}{double Document publication year.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_raw"

#' @title data_basic
#' @description Basic researcher-coded variables independent of gender-coding, raw ethnographic text and identifiers. Reputation domains coded as 1 for evidence for and 0 for no evidence.
#' @format A data frame with 319 rows and 25 variables:
#' \describe{
#'   \item{\code{cooperation}}{character Reputations based on willingness, experience, capacities, or the likelihood one individual will (or will not) intentionally work together with or assist another individual or group or contribute to the efforts of another individual or group in order to achieve a joint goal or outcome.}
#'   \item{\code{prosociality}}{character Reputations based on an individual's willingness, experience, capacities or the likelihood they will (or will not) invest in group welfare or act in group-altruistic ways (which is not captured by “Cooperation”, i.e., non-cooperation based prosociality or characteristics such as friendliness). Includes individual investment, behaviors, or emotional disposition.}
#'   \item{\code{honesty}}{character Reputations for the quality of being honest or not lying or intentionally deceiving others (as well as those dispossessing this trait).}
#'   \item{\code{cultural_conformity}}{character Reputations based on excelling at, consistently demonstrating, or embodying skills or qualities preferentially valued within a particular cultural or social context. Includes culturally appropriate, preferred, and prescribed behaviors (e.g. willingness or ability to follow norms). (includes individuals who disposses this trait).}
#'   \item{\code{industriousness}}{character Reputations based on productive outputs from activities such as subsistence and other economic efforts, domestic work, recreational accomplishments, etc., including past and current productivity (includes individuals who disposses this trait). These reputations are based on the outputs of such efforts and not the capacities, per se, i.e., reputations for delivering hunted meat (not the ability to hunt), reputations for cleaning the house (not the ability to clean the house), reputations for earning wages (not the ability to perform a task within a wage labor context), reputations for producing cultivated foods (not the reputation for being a knowledgeable farmer/gardener).}
#'   \item{\code{coercive_ability}}{character Reputations based on others fear, threats, or intimidation rooted in power-imbalances and differences in physical formidability, and when these actions are associated with greater access to contested resources and/or social influence and control(includes individuals who disposses this trait). }
#'   \item{\code{agressiveness}}{character Reputations for a propensity to act aggressively and agonistically, though which may not include control or influence (includes individuals who disposses this trait).}
#'   \item{\code{social_status}}{character Reputations for high social status, prestigiousness, or esteem (or their opposite). Includes “global” social status, conceived broadly and likely dependent on multiple criteria. Separate from “Dominance” reputations.}
#'   \item{\code{parental_care}}{character Reputations for being a good parent, successfully raising many/quality children, and/or investing a lot of time, resources, and energy in raising children. (includes individuals who disposses this trait).}
#'   \item{\code{sociosexuality}}{character Reputations for having many sexual partners and/or willingness to engage in sexual activity or develop sexual/romantic relationships outside of marriage (includes individuals who disposses this trait).}
#'   \item{\code{sexual_fidelity}}{character Reputations for fidelity, sexual exclusivity, and maintaining physical committedness within a marriage or sexual relationships. (includes individuals who disposses this trait).}
#'   \item{\code{somatic_capital}}{character Reputations for beneficial and positive physiological traits including healthiness, strength, agility and dexterity, etc.}
#'   \item{\code{neural_capital}}{character Reputations for cognitive and neural-based dimensions of somatic or embodied capital, including reputations for generalized or specialized intelligence, special knowledge, cognitive abilities, decision-making capacities, etc.}
#'   \item{\code{social_capital}}{character Reputations for having a strong social network and social support including having many social partners or allies and having social partners or allies who are of high quality (defined broadly).}
#'   \item{\code{material_capital}}{character Reputations for having high levels of material wealth, including all forms of material wealth and currencies, such as money, territory, prestige goods, property, having food reserves, and other material resources.}
#'   \item{\code{supernatural_ability}}{character Reputations for having supernatural abilities and capacities beyond “normal” abilities, including capacities rooted in physical displays with an important supernatural component (such as trance) or other non-physical abilities (augury, supernatural abilities in ritual, magic, etc.). This can include healing related to supernatural agency(ies).}
#'   \item{\code{medicine}}{character Reputations for having (or not having) knowledge and ability to heal the self and others through naturalistic means.}
#'   \item{\code{teaching}}{character Reputations for being a good teacher including all forms of teaching, defined as an informed individual modifying their behavior for the learning benefit of a naive individual. Includes capacities to train and transmit specialized or generalized information. (includes individuals who disposses this trait).}
#'   \item{\code{oration}}{character Reputations for having (or not having) a superior ability to use language or other forms of vocalization in public and private contexts.}
#'   \item{\code{bravery}}{character Reputations for the ability or disposition to voluntarily act when facing personal risk (in terms of agony, pain, loss, danger, uncertainty, or intimidation) in pursuit of a worthy goal, often in the face of fear. (synonyms: valor and courage). (includes individuals who do not possess this trait).}
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{document_ID}}{character The HRAF document ID for each source document.}
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_basic"

#' @title data_basic_female
#' @description Basic researcher-coded variables for female-specific evidence only, raw ethnographic text and identifiers. Reputation domains coded as 1 for evidence for female-specific reputations and 0 for no evidence for female-specific reputations.
#' @format A data frame with 319 rows and 24 variables:
#' \describe{
#'   \item{\code{cooperation}}{character Reputations based on willingness, experience, capacities, or the likelihood one individual will (or will not) intentionally work together with or assist another individual or group or contribute to the efforts of another individual or group in order to achieve a joint goal or outcome.}
#'   \item{\code{prosociality}}{character Reputations based on an individual's willingness, experience, capacities or the likelihood they will (or will not) invest in group welfare or act in group-altruistic ways (which is not captured by “Cooperation”, i.e., non-cooperation based prosociality or characteristics such as friendliness). Includes individual investment, behaviors, or emotional disposition.}
#'   \item{\code{cultural_conformity}}{character Reputations based on excelling at, consistently demonstrating, or embodying skills or qualities preferentially valued within a particular cultural or social context. Includes culturally appropriate, preferred, and prescribed behaviors (e.g. willingness or ability to follow norms). (includes individuals who disposses this trait).}
#'   \item{\code{industriousness}}{character Reputations based on productive outputs from activities such as subsistence and other economic efforts, domestic work, recreational accomplishments, etc., including past and current productivity (includes individuals who disposses this trait). These reputations are based on the outputs of such efforts and not the capacities, per se, i.e., reputations for delivering hunted meat (not the ability to hunt), reputations for cleaning the house (not the ability to clean the house), reputations for earning wages (not the ability to perform a task within a wage labor context), reputations for producing cultivated foods (not the reputation for being a knowledgeable farmer/gardener).}
#'   \item{\code{coercive_ability}}{character Reputations based on others fear, threats, or intimidation rooted in power-imbalances and differences in physical formidability, and when these actions are associated with greater access to contested resources and/or social influence and control(includes individuals who disposses this trait). }
#'   \item{\code{agressiveness}}{character Reputations for a propensity to act aggressively and agonistically, though which may not include control or influence (includes individuals who disposses this trait).}
#'   \item{\code{social_status}}{character Reputations for high social status, prestigiousness, or esteem (or their opposite). Includes “global” social status, conceived broadly and likely dependent on multiple criteria. Separate from “Dominance” reputations.}
#'   \item{\code{parental_care}}{character Reputations for being a good parent, successfully raising many/quality children, and/or investing a lot of time, resources, and energy in raising children. (includes individuals who disposses this trait).}
#'   \item{\code{sociosexuality}}{character Reputations for having many sexual partners and/or willingness to engage in sexual activity or develop sexual/romantic relationships outside of marriage (includes individuals who disposses this trait).}
#'   \item{\code{sexual_fidelity}}{character Reputations for fidelity, sexual exclusivity, and maintaining physical committedness within a marriage or sexual relationships. (includes individuals who disposses this trait).}
#'   \item{\code{somatic_capital}}{character Reputations for beneficial and positive physiological traits including healthiness, strength, agility and dexterity, etc.}
#'   \item{\code{neural_capital}}{character Reputations for cognitive and neural-based dimensions of somatic or embodied capital, including reputations for generalized or specialized intelligence, special knowledge, cognitive abilities, decision-making capacities, etc.}
#'   \item{\code{social_capital}}{character Reputations for having a strong social network and social support including having many social partners or allies and having social partners or allies who are of high quality (defined broadly).}
#'   \item{\code{material_capital}}{character Reputations for having high levels of material wealth, including all forms of material wealth and currencies, such as money, territory, prestige goods, property, having food reserves, and other material resources.}
#'   \item{\code{supernatural_ability}}{character Reputations for having supernatural abilities and capacities beyond “normal” abilities, including capacities rooted in physical displays with an important supernatural component (such as trance) or other non-physical abilities (augury, supernatural abilities in ritual, magic, etc.). This can include healing related to supernatural agency(ies).}
#'   \item{\code{medicine}}{character Reputations for having (or not having) knowledge and ability to heal the self and others through naturalistic means.}
#'   \item{\code{teaching}}{character Reputations for being a good teacher including all forms of teaching, defined as an informed individual modifying their behavior for the learning benefit of a naive individual. Includes capacities to train and transmit specialized or generalized information. (includes individuals who disposses this trait).}
#'   \item{\code{oration}}{character Reputations for having (or not having) a superior ability to use language or other forms of vocalization in public and private contexts.}
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{document_ID}}{character The HRAF document ID for each source document.}
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'   \item{\code{sex}}{character Gender coding. All female here.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_basic_female"

#' @title data_basic_male
#' @description Basic researcher-coded variables for male-specific evidence only, raw ethnographic text and identifiers. Reputation domains coded as 1 for evidence for male-specific reputations and 0 for no evidence for male-specific reputations.
#' @format A data frame with 319 rows and 26 variables:
#' \describe{
#'   \item{\code{cooperation}}{character Reputations based on willingness, experience, capacities, or the likelihood one individual will (or will not) intentionally work together with or assist another individual or group or contribute to the efforts of another individual or group in order to achieve a joint goal or outcome.}
#'   \item{\code{prosociality}}{character Reputations based on an individual's willingness, experience, capacities or the likelihood they will (or will not) invest in group welfare or act in group-altruistic ways (which is not captured by “Cooperation”, i.e., non-cooperation based prosociality or characteristics such as friendliness). Includes individual investment, behaviors, or emotional disposition.}
#'   \item{\code{honesty}}{character Reputations for the quality of being honest or not lying or intentionally deceiving others (as well as those dispossessing this trait).}
#'   \item{\code{cultural_conformity}}{character Reputations based on excelling at, consistently demonstrating, or embodying skills or qualities preferentially valued within a particular cultural or social context. Includes culturally appropriate, preferred, and prescribed behaviors (e.g. willingness or ability to follow norms). (includes individuals who disposses this trait).}
#'   \item{\code{industriousness}}{character Reputations based on productive outputs from activities such as subsistence and other economic efforts, domestic work, recreational accomplishments, etc., including past and current productivity (includes individuals who disposses this trait). These reputations are based on the outputs of such efforts and not the capacities, per se, i.e., reputations for delivering hunted meat (not the ability to hunt), reputations for cleaning the house (not the ability to clean the house), reputations for earning wages (not the ability to perform a task within a wage labor context), reputations for producing cultivated foods (not the reputation for being a knowledgeable farmer/gardener).}
#'   \item{\code{coercive_ability}}{character Reputations based on others fear, threats, or intimidation rooted in power-imbalances and differences in physical formidability, and when these actions are associated with greater access to contested resources and/or social influence and control(includes individuals who disposses this trait). }
#'   \item{\code{agressiveness}}{character Reputations for a propensity to act aggressively and agonistically, though which may not include control or influence (includes individuals who disposses this trait).}
#'   \item{\code{social_status}}{character Reputations for high social status, prestigiousness, or esteem (or their opposite). Includes “global” social status, conceived broadly and likely dependent on multiple criteria. Separate from “Dominance” reputations.}
#'   \item{\code{parental_care}}{character Reputations for being a good parent, successfully raising many/quality children, and/or investing a lot of time, resources, and energy in raising children. (includes individuals who disposses this trait).}
#'   \item{\code{sociosexuality}}{character Reputations for having many sexual partners and/or willingness to engage in sexual activity or develop sexual/romantic relationships outside of marriage (includes individuals who disposses this trait).}
#'   \item{\code{sexual_fidelity}}{character Reputations for fidelity, sexual exclusivity, and maintaining physical committedness within a marriage or sexual relationships. (includes individuals who disposses this trait).}
#'   \item{\code{somatic_capital}}{character Reputations for beneficial and positive physiological traits including healthiness, strength, agility and dexterity, etc.}
#'   \item{\code{neural_capital}}{character Reputations for cognitive and neural-based dimensions of somatic or embodied capital, including reputations for generalized or specialized intelligence, special knowledge, cognitive abilities, decision-making capacities, etc.}
#'   \item{\code{social_capital}}{character Reputations for having a strong social network and social support including having many social partners or allies and having social partners or allies who are of high quality (defined broadly).}
#'   \item{\code{material_capital}}{character Reputations for having high levels of material wealth, including all forms of material wealth and currencies, such as money, territory, prestige goods, property, having food reserves, and other material resources.}
#'   \item{\code{supernatural_ability}}{character Reputations for having supernatural abilities and capacities beyond “normal” abilities, including capacities rooted in physical displays with an important supernatural component (such as trance) or other non-physical abilities (augury, supernatural abilities in ritual, magic, etc.). This can include healing related to supernatural agency(ies).}
#'   \item{\code{medicine}}{character Reputations for having (or not having) knowledge and ability to heal the self and others through naturalistic means.}
#'   \item{\code{teaching}}{character Reputations for being a good teacher including all forms of teaching, defined as an informed individual modifying their behavior for the learning benefit of a naive individual. Includes capacities to train and transmit specialized or generalized information. (includes individuals who disposses this trait).}
#'   \item{\code{oration}}{character Reputations for having (or not having) a superior ability to use language or other forms of vocalization in public and private contexts.}
#'   \item{\code{bravery}}{character Reputations for the ability or disposition to voluntarily act when facing personal risk (in terms of agony, pain, loss, danger, uncertainty, or intimidation) in pursuit of a worthy goal, often in the face of fear. (synonyms: valor and courage). (includes individuals who do not possess this trait).}
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{document_ID}}{character The HRAF document ID for each source document.}
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'   \item{\code{sex}}{character Gender coding. All male here.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_basic_male"

#' @title data_basic_neutral
#' @description Basic researcher-coded variables for gender-neutral evidence only, raw ethnographic text and identifiers. Reputation domains coded as 1 for evidence for gender-neutral reputations and 0 for no evidence for gender-neutral reputations.
#' @format A data frame with 319 rows and 26 variables:
#' \describe{
#'   \item{\code{cooperation}}{character Reputations based on willingness, experience, capacities, or the likelihood one individual will (or will not) intentionally work together with or assist another individual or group or contribute to the efforts of another individual or group in order to achieve a joint goal or outcome.}
#'   \item{\code{prosociality}}{character Reputations based on an individual's willingness, experience, capacities or the likelihood they will (or will not) invest in group welfare or act in group-altruistic ways (which is not captured by “Cooperation”, i.e., non-cooperation based prosociality or characteristics such as friendliness). Includes individual investment, behaviors, or emotional disposition.}
#'   \item{\code{honesty}}{character Reputations for the quality of being honest or not lying or intentionally deceiving others (as well as those dispossessing this trait).}
#'   \item{\code{cultural_conformity}}{character Reputations based on excelling at, consistently demonstrating, or embodying skills or qualities preferentially valued within a particular cultural or social context. Includes culturally appropriate, preferred, and prescribed behaviors (e.g. willingness or ability to follow norms). (includes individuals who disposses this trait).}
#'   \item{\code{industriousness}}{character Reputations based on productive outputs from activities such as subsistence and other economic efforts, domestic work, recreational accomplishments, etc., including past and current productivity (includes individuals who disposses this trait). These reputations are based on the outputs of such efforts and not the capacities, per se, i.e., reputations for delivering hunted meat (not the ability to hunt), reputations for cleaning the house (not the ability to clean the house), reputations for earning wages (not the ability to perform a task within a wage labor context), reputations for producing cultivated foods (not the reputation for being a knowledgeable farmer/gardener).}
#'   \item{\code{coercive_ability}}{character Reputations based on others fear, threats, or intimidation rooted in power-imbalances and differences in physical formidability, and when these actions are associated with greater access to contested resources and/or social influence and control(includes individuals who disposses this trait). }
#'   \item{\code{agressiveness}}{character Reputations for a propensity to act aggressively and agonistically, though which may not include control or influence (includes individuals who disposses this trait).}
#'   \item{\code{social_status}}{character Reputations for high social status, prestigiousness, or esteem (or their opposite). Includes “global” social status, conceived broadly and likely dependent on multiple criteria. Separate from “Dominance” reputations.}
#'   \item{\code{parental_care}}{character Reputations for being a good parent, successfully raising many/quality children, and/or investing a lot of time, resources, and energy in raising children. (includes individuals who disposses this trait).}
#'   \item{\code{sociosexuality}}{character Reputations for having many sexual partners and/or willingness to engage in sexual activity or develop sexual/romantic relationships outside of marriage (includes individuals who disposses this trait).}
#'   \item{\code{sexual_fidelity}}{character Reputations for fidelity, sexual exclusivity, and maintaining physical committedness within a marriage or sexual relationships. (includes individuals who disposses this trait).}
#'   \item{\code{somatic_capital}}{character Reputations for beneficial and positive physiological traits including healthiness, strength, agility and dexterity, etc.}
#'   \item{\code{neural_capital}}{character Reputations for cognitive and neural-based dimensions of somatic or embodied capital, including reputations for generalized or specialized intelligence, special knowledge, cognitive abilities, decision-making capacities, etc.}
#'   \item{\code{social_capital}}{character Reputations for having a strong social network and social support including having many social partners or allies and having social partners or allies who are of high quality (defined broadly).}
#'   \item{\code{material_capital}}{character Reputations for having high levels of material wealth, including all forms of material wealth and currencies, such as money, territory, prestige goods, property, having food reserves, and other material resources.}
#'   \item{\code{supernatural_ability}}{character Reputations for having supernatural abilities and capacities beyond “normal” abilities, including capacities rooted in physical displays with an important supernatural component (such as trance) or other non-physical abilities (augury, supernatural abilities in ritual, magic, etc.). This can include healing related to supernatural agency(ies).}
#'   \item{\code{medicine}}{character Reputations for having (or not having) knowledge and ability to heal the self and others through naturalistic means.}
#'   \item{\code{teaching}}{character Reputations for being a good teacher including all forms of teaching, defined as an informed individual modifying their behavior for the learning benefit of a naive individual. Includes capacities to train and transmit specialized or generalized information. (includes individuals who disposses this trait).}
#'   \item{\code{oration}}{character Reputations for having (or not having) a superior ability to use language or other forms of vocalization in public and private contexts.}
#'   \item{\code{bravery}}{character Reputations for the ability or disposition to voluntarily act when facing personal risk (in terms of agony, pain, loss, danger, uncertainty, or intimidation) in pursuit of a worthy goal, often in the face of fear. (synonyms: valor and courage). (includes individuals who do not possess this trait).}
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{document_ID}}{character The HRAF document ID for each source document.}
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'   \item{\code{sex}}{character Gender coding. All neutral here.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_basic_neutral"

#' @title data_culture
#' @description Culture-level metadata.
#' @format A data frame with 153 rows and 10 variables:
#' \describe{
#'   \item{\code{culture_ID}}{character The HRAF Old World Cultures (OWC) unique identifier for each culture.}
#'   \item{\code{n}}{integer The number of documents from the eHRAF providing ethnographic texts for each culture.}
#'   \item{\code{Region}}{character The eHRAF region classification for the culture's continental geographic location.}
#'   \item{\code{Subregion}}{character The eHRAF sub-region classification for the culture's specific geographic location.}
#'   \item{\code{Subsistence.Type}}{character The culture's eHRAF subsistence type classification.}
#'   \item{\code{EA_ID}}{character The culture's Ethnographic Atlas identification number.}
#'   \item{\code{SCCS}}{integer The culture's Standard Cross-Cultural Sample identification number.}
#'   \item{\code{longitude}}{double Approximate longitude of culture geographic location.}
#'   \item{\code{latitude}}{double Approximate latitude of culture geographic location.}
#'   \item{\code{Name}}{character Culture name (eHRAF culture name).}
#'   \item{\code{language_family}}{character Culture language family (retrieved from The Ethnographic Atlas or other sources).}
#'   \item{\code{N_docs}}{double Number of total available eHRAF documents for culture.}
#'   \item{\code{N_pages}}{double Number of total pages in all eHRAF documents for culture}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"data_culture"

#' @title reputation_dtm
#' @description A document-term matrix formulated from the raw ethnographic texts (i.e., "Text" in data_raw). Each row corresponds to the ethnographic texts. Each column represents each unique term in the entire corpus of ethnographic texts. Cells indicate the frequency each term appears in the ethnographic text.
#' @format A data frame with 319 rows and 8770 variables:
#' \describe{
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"reputation_dtm"

#' @title reputation_words
#' @description Database of all words and their associated terms (i.e., tokens)
#' @format A data frame with 45007 rows and 3 variables:
#' \describe{
#'   \item{\code{text_ID}}{character Internally assigned unique identifer for each text record.}
#'   \item{\code{word}}{character The original term.}
#'   \item{\code{lemma}}{character The terms associated token.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/}
"reputation_words"

