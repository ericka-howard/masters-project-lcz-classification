Initial Data Cleaning
================

Strategy is to load all scenes in as rasterstacks and the lcz and
polygon information as a dataframe.

The scenes are then stacked and converted to a dataframe.

LCZ and scene data is bound by column and saved in `results` as
`hk_df.rds` file

``` r
lcz <- readRDS(here("results", "lcz_and_poly_ids.RDS"))
scenes <- get_rasterstack()
```

``` r
scenes_df <- as.data.frame(scenes)
```

``` r
lcz_and_scenes_df <- bind_cols(lcz, scenes_df)
```

``` r
names(lcz_and_scenes_df)[1] <- "lcz"
```

``` r
saveRDS(lcz_and_scenes_df, here("results", "hk_df.rds"))
```
