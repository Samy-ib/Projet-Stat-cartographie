library(tmap)
library(sf)

shape <- read_sf(dsn = "./shp", layer = "gadm36_DZA_1") #READING THE SHAPE FILE

########################### FIRST MAP ########################### 
tm <- tm_shape(shape) +
tm_fill("MAP1", title = "Legende", style = "fixed",
        breaks = c(0, 70, 200, 400, 700, 2100),
        textNA = "Donnee inconnue") +
tm_borders() +
tm_text("NAME_1", size="AREA", root=10)+
tm_style("bw",legend.frame = TRUE, bg.color="lightblue", legend.bg.color="lightblue")+
tm_compass(type = "rose", show.labels=2) +
tm_credits("Algerie", size=1.3,fontfamily="Z003") +
tm_layout("Year 2011 Map1",
          fontfamily="Z003",
          title.size=1.8,
          legend.title.size = 1.5,
          legend.text.size = 1.3,
          legend.position = c("left","bottom"),
          legend.bg.color = "white",
          legend.bg.alpha = 0.7)+
tm_scale_bar()
tmap_save(tm, "map1.png", width=4000, height=3000)
 
########################### SECOND MAP ########################### 

tm[2]<-tm_fill("MAP2", title = "Legende", style = "fixed",
        breaks = c(0, 25, 100, 250, 400, 1000),
        textNA = "Donnee inconnue")
tm[8]<-tm_layout("Year 2011 Map2",
          fontfamily="Z003",
          title.size=1.8,
          legend.title.size = 1.5,
          legend.text.size = 1.3,
          legend.position = c("left","bottom"),
          legend.bg.color = "white",
          legend.bg.alpha = 0.7)
tmap_save(tm, "map2.png", width=4000, height=3000)

########################### THIRD MAP ########################### 

tm[2]<-tm_fill("MAP3", title = "Legende", style = "fixed",
        breaks = c(0, 40, 100, 200, 300, 1200),
        textNA = "Donnee inconnue") 
tm[8]<-tm_layout("Year 2011 Map3",
          fontfamily="Z003",
          title.size=1.8,
          legend.title.size = 1.5,
          legend.text.size = 1.3,
          legend.position = c("left","bottom"),
          legend.bg.color = "white",
          legend.bg.alpha = 0.7)
tmap_save(tm, "map3.png", width=4000, height=3000)

########################### FOURTH MAP ########################### 

tm[2]<-tm_fill("MAP4", title = "Legende", style = "fixed",
        breaks = c(0, 30, 100, 200, 250, 1000),
        textNA = "Donnee inconnue") 
tm[8]<-tm_layout("Year 2011 Map4",
          fontfamily="Z003",
          title.size=1.8,
          legend.title.size = 1.5,
          legend.text.size = 1.3,
          legend.position = c("left","bottom"),
          legend.bg.color = "white",
          legend.bg.alpha = 0.7)
tmap_save(tm, "map4.png", width=4000, height=3000)
