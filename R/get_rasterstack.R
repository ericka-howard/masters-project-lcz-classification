#' Very limited scope. When function is called it returns a rasterstack
#' of the Hong Kong Landsat 8 files based on current file stucture.
#' 
#' @return a rasterstack with all four scenes stacked on top of each
#' other and matching band names (b1, b2, ... b11)
#' @examples
#' get_rasterstack()

get_rasterstack <- function() {
  
  # make file lists
  scene_1 <-
    list.files(
      here("data/hong_kong/landsat_8", "LC81220442013333LGN00"),
      pattern = '.tif',
      all.files = TRUE,
      full.names = TRUE
    )
  
  scene_2 <-
    list.files(
      here("data/hong_kong/landsat_8", "LC81220442014288LGN00"),
      pattern = '.tif',
      all.files = TRUE,
      full.names = TRUE
    )
  
  scene_3 <-
    list.files(
      here("data/hong_kong/landsat_8", "LC81220442014320LGN00"),
      pattern = '.tif',
      all.files = TRUE,
      full.names = TRUE
    )
  
  scene_4 <-
    list.files(
      here("data/hong_kong/landsat_8", "LC81220442015291LGN00"),
      pattern = '.tif',
      all.files = TRUE,
      full.names = TRUE
    )
  
  # actually import each scene
  s1 <- stack(scene_1)
  s2 <- stack(scene_2)
  s3 <- stack(scene_3)
  s4 <- stack(scene_4)
  # change-colnames
  names(s1) <-
    c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
  names(s2) <-
    c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
  names(s3) <-
    c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
  names(s4) <-
    c("b1", "b2", "b3", "b4", "b5", "b6", "b7", "b10", "b11")
  # stack all
  scenes <- stack(s1, s2, s3, s4)
  return(scenes)
}