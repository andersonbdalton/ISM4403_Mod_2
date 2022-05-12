#set up
read_excel("week2_flat_file.xlsx")
install.packages('WDI')

#load in the libraries
library(WDI)
library(ggplot2)


WDIsearch('gdp')
WDIsearch('gdp')[1:10,]

WDIsearch('gdp.*capita.*constant')

#download the data 
df = WDI(indicator='NY.GDP.PCAP.KD', country=c('MX','CA','US'), start=1960, end=2012)
head(df)

#plot the data
ggplot(dat, aes(year, NY.GDP.PCAP.KD, color=country)) + geom_line() + 
  xlab('Year') + ylab('GDP per capita')

#all learning/references are from https://www.youtube.com/watch?v=Hpjnp1hwa8c & https://github.com/vincentarelbundock/WDI