#' Calculate ua, pa, and f1 metrics for each LCZ class for a given dataset
#' 
#' @param dat A dataframe with at least two variables: "lcz" and "lcz_predicted"
#' that represent LCZ classes and range from 0 to 17
#' @return list of three values, UA, PA, and F1-score
#' @examples
#' get_f1_score(dat=data.frame(lcz = as.factor(c(1,2,12,13)),
#'                                     predicted_lcz = as.factor(c(1,3,12,13))))

get_f1_score <- function(dat){
  map(1:17, ~do_f1_calculations(dat, .x))
}

do_f1_calculations <- function(dat, current_lcz){
  current_lcz %<>% factor()
  ua_pa_f1 <- dat %>%
    filter(lcz == current_lcz | lcz_predicted == current_lcz) %>%
    # not sure how the following should proceed
    mutate(ua = n(lcz == current_lcz &
                    lcz_predicted == current_lcz) / n(lcz_predicted == current_lcz),
           pa = n(lcz == current_lcz &
                    lcz_predicted == current_lcz) / n(lcz == current_lcz),
           f1 = (2 * ua * pa) / (ua + pa))
}