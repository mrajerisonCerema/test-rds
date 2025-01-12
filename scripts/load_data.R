load_data <- function(home = TRUE, osm = FALSE) {
  
  if(home) {
    regs <- st_read("C:/Users/mathieu.rajerison/Documents/DATAS/ADMIN-EXPRESS-COG_2-1__SHP__FRA_L93_2020-03-25/ADMIN-EXPRESS-COG_2-1__SHP__FRA_2020-03-25/ADMIN-EXPRESS-COG/1_DONNEES_LIVRAISON_2020-03-25/ADE-COG_2-1_SHP_LAMB93_FR/REGION.shp")
    comms <- st_read("C:/Users/mathieu.rajerison/Documents/DATAS/ADMIN-EXPRESS-COG_2-1__SHP__FRA_L93_2020-03-25/ADMIN-EXPRESS-COG_2-1__SHP__FRA_2020-03-25/ADMIN-EXPRESS-COG/1_DONNEES_LIVRAISON_2020-03-25/ADE-COG_2-1_SHP_LAMB93_FR/COMMUNE_CARTO.shp")
  } else {
    regs <- st_read("D:/DATAS/ADMINEXPRESS_1-0__SHP_LAMB93_FXX_2016-11-15/ADMINEXPRESS_1-0__SHP_LAMB93_FXX_2016-11-15/ADMINEXPRESS/1_DONNEES_LIVRAISON_2016-11-15/ADE_1-0_SHP_LAMB93_FR/REGION.shp")
    comms <- st_read("D:/DATAS/ADMINEXPRESS_1-0__SHP_LAMB93_FXX_2016-11-15/ADMINEXPRESS_1-0__SHP_LAMB93_FXX_2016-11-15/ADMINEXPRESS/1_DONNEES_LIVRAISON_2016-11-15/ADE_1-0_SHP_LAMB93_FR/COMMUNE.shp")
  }
  
  if(osm) {
    regs <<- regs %>% st_set_crs(2154) %>% st_transform(4326)
    comms <<- comms %>% st_set_crs(2154) %>% st_transform(4326)
  } else {
    regs <<- regs
    comms <<- comms
  }

}