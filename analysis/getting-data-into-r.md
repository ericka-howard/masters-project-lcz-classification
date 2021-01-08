Getting the Landsat Data into R
================

libraries

``` r
library(randomForest)
```

    ## Warning: package 'randomForest' was built under R version 4.0.3

    ## randomForest 4.6-14

    ## Type rfNews() to see new features/changes/bug fixes.

``` r
library(raster)
```

    ## Loading required package: sp

``` r
library(rgdal)
```

    ## Warning: package 'rgdal' was built under R version 4.0.3

    ## rgdal: version: 1.5-19, (SVN revision 1092)
    ## Geospatial Data Abstraction Library extensions to R successfully loaded
    ## Loaded GDAL runtime: GDAL 3.0.4, released 2020/01/28
    ## Path to GDAL shared files: C:/Users/erick/Documents/R/win-library/4.0/rgdal/gdal
    ## GDAL binary built with GEOS: TRUE 
    ## Loaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]
    ## Path to PROJ shared files: C:/Users/erick/Documents/R/win-library/4.0/rgdal/proj
    ## Linking to sp version:1.4-4
    ## To mute warnings of possible GDAL/OSR exportToProj4() degradation,
    ## use options("rgdal_show_exportToProj4_warnings"="none") before loading rgdal.

``` r
library(here)
```

    ## Warning: package 'here' was built under R version 4.0.3

    ## here() starts at C:/Users/erick/Documents/MS_Project/masters-project-lcz-classification

``` r
#training <- readOGR('training_data.shp', layer='training_data')
#training <- readOGR("../train/hong_kong/osm_vector/gis.osm_buildings_a_free_1 [clipped].shp", layer= "gis.osm_buildings_a_free_1 [clipped]")
#le7 <- brick('LE70220491999322EDC01_stack.gtif')
#le7 <- brick(here("../train/hong_kong/landsat_8", "LC81220442015291LGN00/LC81220442015291LGN00_B1.tif"))
```

``` r
#roi_data <- extract(le7, training, df=TRUE)
```

Definitely didn’t work and was just for testing (to see if I could go
through the tutorial code with my data) anyway, so scrap it.

Tomorrow: 1. Why did they give us the data as a tif instead of a shp
file? Is that advantageous? 2. If it’s not, how do I convert it to a
point shapefile? 3. Watch WUDAPT video
