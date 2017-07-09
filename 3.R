library(ggplot2)
sub_emissions<- subset(NEI,fips="24510")
g<-ggplot(sub_emissions,aes(year,Emissions,color=type))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions for Baltimore City ",x="Year (1999 - 2008)")