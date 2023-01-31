#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#Data Import and Cleaning
raw_df <- read.csv("../data/week3.csv")
raw_df$timeStart <- as.POSIXct(raw_df$timeStart, format = "%Y-%m-%d %T")
raw_df$timeEnd <- as.POSIXct(raw_df$timeEnd, format = "%Y-%m-%d %T")
clean_df <- raw_df[raw_df$timeStart >= as.POSIXct("2017-07-01 00:00:00"),]
