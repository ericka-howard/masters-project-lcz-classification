Untitled
================

``` r
lcz <- brick(here("data/hong_kong/lcz", "hong_kong_lcz_GT.tif"))

# make file lists
scene_1 <- list.files(here("data/hong_kong/landsat_8", "LC81220442013333LGN00"),
                       pattern='.tif', all.files=TRUE, full.names=TRUE)

scene_2 <- list.files(here("data/hong_kong/landsat_8", "LC81220442014288LGN00"),
                       pattern='.tif', all.files=TRUE, full.names=TRUE)

scene_3 <- list.files(here("data/hong_kong/landsat_8", "LC81220442014320LGN00"),
                       pattern='.tif', all.files=TRUE, full.names=TRUE)

scene_4 <- list.files(here("data/hong_kong/landsat_8", "LC81220442015291LGN00"),
                       pattern='.tif', all.files=TRUE, full.names=TRUE)

# actually import each scene
s1 <- stack(scene_1)
s2 <- stack(scene_2)
s3 <- stack(scene_3)
s4 <- stack(scene_4)
```

``` r
names(s1) <- c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
names(s2) <- c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
names(s3) <- c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
names(s4) <- c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
```

``` r
lcz_and_scenes <- stack(lcz, s1, s2, s3, s4)
lcz_and_scenes_df <- as.data.frame(lcz_and_scenes)
```

## Get rid of NAs here? Feel like no

``` r
saveRDS(lcz_and_scenes_df, here("results", "hk_df.rds"))
```
