# reputationdiversitydata
Data package repository for the *Reputation Diversity Data* package

This data package includes data used in publication, *The content and structure of reputation domains across human societies*, by
Zachary H. Garfield, Ryan Schacht, Emily R. Post, Dominique Ingram, Andrea Uehling, and Shane J. Macfarlan.

Data are based on 20 researcher-coded variables, covering a wide sample of reputation domains, on ethnographic paragraphs extracted from the [electronic Human Relations Area Files](https://ehrafworldcultures.yale.edu/ehrafe/).

The extracted paragraphs were retrieved using eHRAF’s Word Search Function and its indexing system, the Outline of Cultural Materials (OCM), which associates each paragraph with any of over 700 subject codes covering a wide range of topics relevant for the human sciences. Specifically, we conducted an “Advanced Search” of the keyword “reputation” with any of the following OCM subjects: *Social Personality* (156), *Personality Traits* (157), or *Status, Role, and Prestige* (554).

This search produced 1383 paragraphs in 670 documents from 242 cultures. These 1383 paragraphs were read for content and those referencing reputations for entire groups (e.g., religious sects), non-human entities (e.g., animals, deities), or the ethnographers themselves wer excluded. Paragraphs drawn from the same document were aggregated. This process resulted in a dataset containing 319 documents from 153 cultures.

The data frames are at the document-level (from which researcher-coded variables were produced). Culture-level metadata is also included. 

To install:

`remotes::install_github('zhgarfield/reputationdiversitydata')`
