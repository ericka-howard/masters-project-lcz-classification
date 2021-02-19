#' Takes in test data and the random forest to predict with and returns test
#' data with new variable of predicted LCZ class added
#' 
#' @param test_pixels A dataframe for testing accuracy, with true LCZ class and
#' all 36 bands of each of the four Landsat scenes. Naming convention for band
#' variables is b<band_number>.<scene_number>, and is "lcz" for true LCZ class
#' @param current_rf an object of class randomForest based on data with same
#' variables as test_pixels.
#' @return the same test_pixels dataframe, with an additional column of 
#' the predicted LCZ value for each test pixel, called "lcz_predicted"
#' @examples

predict_lcz <- function(test_pixels, current_rf){
  only_bands <- subset(test_pixels, select= -lcz)
  lcz_predicted <- predict(current_rf, newdata=only_bands, na.rm=T)
  test_pixels$lcz_predicted <- lcz_predicted
  return(test_pixels)
}