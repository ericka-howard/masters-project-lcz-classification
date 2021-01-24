
library(randomForest)
library(raster)
library(rgdal)
library(here)
library(tidyverse)
library(mapproj)
# 
# raster to vector
# dissolve by attribute
# multipart to singlepart
# field calculator to make row number (and therefore polygon #) an attribute
#                                      

singleparts <- readOGR(here("data/hong_kong/lcz_polyid_shapefile", "singleparts.shp"))

train <- brick(here("data/hong_kong/lcz/", "hong_kong_lcz_gt.tif"))

rasterized_singleparts <- rasterize(singleparts, train)

rsp_df <- as.data.frame(rasterized_singleparts)

saveRDS(rsp_df, here("results", "lcz_and_poly_ids.RDS"))

