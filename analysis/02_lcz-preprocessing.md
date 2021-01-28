LCZ Preprocessing
================

The LCZ data does not come with a polygon id it has to be added. This
requires some work in QGIS before bringing the dtat into R, rasterizing,
and saving as a dataframe in `results/lcz_and_poly_ids.rds` Here is the
process:

### 1. Steps in QGIS

1.  raster to vector
2.  dissolve by attribute
3.  multipart to singlepart
4.  field calculator to make row number (and therefore polygon \#) an
    attribute

### 2. Steps in R

Read in file from QGIS

``` r
singleparts <- readOGR(here("data/hong_kong/lcz_polyid_shapefile", "singleparts.shp"))
```

    ## OGR data source with driver: ESRI Shapefile 
    ## Source: "C:\Users\erick\Documents\MS_Project\masters-project-lcz-classification\data\hong_kong\lcz_polyid_shapefile\singleparts.shp", layer: "singleparts"
    ## with 179 features
    ## It has 2 fields
    ## Integer64 fields read as strings:  polygon_id

Read in original LCZ raster file to have information on the extent

``` r
train <- brick(here("data/hong_kong/lcz/", "hong_kong_lcz_gt.tif"))
```

Rasterize the shapefile from QGIS using the extent of the original
raster file.

``` r
rasterized_singleparts <- rasterize(singleparts, train)
```

Transform to dataframe

``` r
rsp_df <- as.data.frame(rasterized_singleparts)
```

Save

``` r
saveRDS(rsp_df, here("results", "lcz_and_poly_ids.RDS"))
```
