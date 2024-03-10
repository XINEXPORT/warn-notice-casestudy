install.packages("here")

library("here")

install.packages("skimr")

library("skimr")

install.packages("janitor")

library("janitor")

install.packages("magrittr")

library("magrittr")

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

#with color
ggplot(data = warn_notice_df) +
  geom_point(mapping = aes(x = CITY_NAME, y = TOTAL_LAYOFF_NUMBER, color = COUNTY_NAME))+
  facet_wrap(~COUNTY_NAME)

#no color
ggplot(data = warn_notice_df) +
  geom_point(mapping = aes(x = CITY_NAME, y = TOTAL_LAYOFF_NUMBER))+
  facet_wrap(~COUNTY_NAME)

#Dallas Layoffs
trimmed_dallas_df<-warn_notice_df %>%
  select(CITY_NAME, JOB_SITE_NAME, LayOff_Date, TOTAL_LAYOFF_NUMBER)

head(trimmed_dallas_df)

ggplot(data = trimmed_dallas_df) +
  geom_point(mapping = aes(x = LayOff_Date, y = TOTAL_LAYOFF_NUMBER))

ggplot(data = trimmed_dallas_df) +
  geom_point(mapping = aes(x = LayOff_Date, y = TOTAL_LAYOFF_NUMBER))+
  labs(title="Dallas Layoffs in 2023 - 2024, By Date")










