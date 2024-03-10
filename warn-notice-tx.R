install.packages("here")

library("here")

install.packages("skimr")

library("skimr")

install.packages("janitor")

library("janitor")

install.packages("dplyr")

library("dplyr")

install.packages("tidyverse")

library(tidyverse)

install.packages("ggplot2")

library(ggplot2)

warn_notice_df<- read_excel("warn-act-listings-2024-twc (1).xlsx")

head(warn_notice_df)

str(warn_notice_df)

rename_with(warn_notice_df, tolower)

colnames(warn_notice_df)

warn_notice_df <-arrange(warn_notice_df, desc(COUNTY_NAME))
