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

colnames(warn_notice_df)

rename_with(warn_notice_df, tolower)

ggplot(data = warn_notice_df) +
  geom_bar(mapping = aes(x = CITY_NAME, fill=CITY_NAME))+
  facet_wrap(~COUNTY_NAME)

ggplot(data = warn_notice_df) +
  geom_point(mapping = aes(x = CITY_NAME, y = TOTAL_LAYOFF_NUMBER, color = COUNTY_NAME))+
  facet_wrap(~COUNTY_NAME)













