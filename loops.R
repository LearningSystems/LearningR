setwd('~/Downloads/')
list.files()
stocks <- read.csv('table (2).csv', dec=',')

the.new <- unique(stocks$Open)

stocks.summary <- list()

for (anew in the.new)
{
    these <- stocks$Open == anew
    stocks.summary[[anew]] <- summary(stocks[these,])
}

stocks.summary