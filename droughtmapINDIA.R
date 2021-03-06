---
title: "Creating maps in R"
author: "Moumita Ghorai"
date: "7/27/2020"
output: html_document
---

Install the packages needed to plot maps.

```{r}
install.packages("choroplethr")
install.packages("choroplethrMaps")
library(choroplethr)
library(choroplethrMaps)
```



```{r}
install.packages("ggmap")
library(ggmap)
```


```{r}
install.packages("maps")

```
#loading package 
```{r}
library(ggplot2)
library(RColorBrewer)
library(ggmap)
library(maps)
library(rgdal)
library(scales)
library(maptools)
library(gridExtra)
library(rgeos)
```

#setting working directory
```{r}
getwd()
setwd("~/maps")
```
#importing shape file - district level
```{r}
states_shape = readShapeSpatial('~/IND_adm2.shp')
```


```{r}
class(states_shape)
names(states_shape)
print(states_shape$ID_1)
print(states_shape$NAME_1)
plot(states_shape, main = "Administrative Map of India")
```


```{r}
names(states_shape)
print(states_shape$NAME_2)
```

#Fortify data file.
```{r}
shp.f <- fortify(states_shape, region = "NAME_2")

```
#import drought data
```{r}
rainfalllongtermdrought <-read_excel("~/rainfalllongtermdrought.xlsx")
```

#rename to "DISTRICT"
```{r}
names(shp.f)[names(shp.f) == "id"] <- "DISTRICT"

```

# Merging it with the rainfall data I got.
```{r}
merge.shp.coef<-merge(shp.f,drought2004, by="DISTRICT", all.x=TRUE)
final.plot<-merge.shp.coef[order(merge.shp.coef$order), ]
```

```{r}
ggplot() +
  geom_polygon(data = final.plot,
           	aes(x = long, y = lat, group = group, fill = final.plot$drought04),
      	     color = "black", ) +
  coord_map()

```

