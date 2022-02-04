library(tidyverse)
FARS_2014_MICH <- read.csv("FARS_2014_MICH.csv")

## The filter command subsets rows based on a condition.
not.moving <- FARS_2014_MICH %>%
  filter(MAN_COLL=="Not Col. Moving") 

## Frequencies and proportions of crashes involving different
##   numbers of pedestrians
table(not.moving$PEDS)
proportions(table(not.moving$PEDS))
