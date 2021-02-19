#' Fits a random forest on the supplied training data with the supplied
#' parameters (or defaults) and then returns: OA, OAnat, OAurb, and F1 
#' for all classes
#' 
#' @param dat A dataframe with at least two variables, true and predicted
#' @param ... arguments for randomForest() function like mtry=7, ntrees=90
#' @return a tibble with columns for the argument, each OA score, and the
#' f1 scores by class and one row (of the values for each of those columns)
#' @examples
#' get_f1_score(dat = tibble(
#' lcz = factor(c(1, 1, 1, 1, 2, 2, 2, 2)),
#' band_1= c(1, 1, 1, 2, 1, 2, 2, 2),
#' band_2 = c(7, 6, 24, 24, 8, 8, 8, 8)),
#' mtry=5, ntrees=70)
#' 

try_parameter <- function(dat, ...) {
  rf <- randomForest(lcz ~ .,
                     data = dat,
                     ...,
                     keep.inbag = T)
  predict(rf, predict.all = T)
  oob_df <- tibble(lcz = dat$lcz,
                   lcz_predicted = predict(rf, predict.all = T)) %>%
    drop_na()
  bind_cols(
    ...,
    get_oa_metrics(oob_df),
    get_f1_score(oob_df, true = lcz, predicted = lcz_predicted)
  )
}