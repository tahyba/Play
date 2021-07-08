install.packages("ggplot2")
install.packages("tidyverse")
install.packages("mapdata")

library(ggplot2)
library(tidyverse)

EUvax <- read.csv("C:/users/stefan/EUvaccine.CSV")
View(EUvax)

mapdata <- map_data("world")
view(mapdata)

mapdata <- left_join(mapdata, EUvax, by="region")
view(mapdata)

mapdata1 <-mapdata %>% filter(! is.na(mapdata$Perc_vaccinated))
view(mapdata1)

map1<-ggplot(mapdata1, aes( x = long, y = lat, group = group))+ 
  geom_polygon(aes(fill = Perc_vaccinated), color = "black")
map1  

map2 <-map1 + scale_fill_gradient(name= "% vaccinated", low ="yellow", high = "red", na.value ="grey50")+
  theme(axis.text.x = element_blank(),
        axis.text.y =element_blank(),
        axis.ticks = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        rect = element_blank())
map2



BarVax <- ggplot(data = mapdata1, aes( x = region, y = Perc_vaccinated), color ="purple")

BarVax + geom_bar (stat ="count")

