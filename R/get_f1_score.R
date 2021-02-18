#' Calculate ua, pa, and f1 metrics for each LCZ class for a given dataset
#' 
#' @param dat A dataframe with at least two variables, true and predicted
#' @param true the name of the "ground truth" variable (ex. lcz)
#' @param predicted the name of the predicted variable (ex. lcz_predicted)
#' @return a tibble with lcz class, n_true, n_correct, n_predicted,
#' UA, PA, and F1-score
#' @examples
#' get_f1_score(dat = tibble(
#' lcz = factor(c(1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1)),
#' lcz_predicted = factor(c(1, 1, 1, 2, 1, 2, 2, 2, 1, 1, 1, 1))),
#' true=lcz, 
#' predicted=lcz_predicted)

get_f1_score <- function(dat, true, predicted){
  # values for PA
  pa <- dat %>% 
    group_by(lcz = {{ true }}) %>% 
    summarise(
      n_true = n(),
      n_correct = sum({{ true }} == {{ predicted }})
    )
  # denominator for UA
  ua <- dat %>% 
    group_by(lcz = {{ predicted }}) %>% 
    summarise(
      n_predicted = n()
    )
  # do calculations
  pa %>% 
    left_join(ua) %>% 
    mutate(
      ua = n_correct/n_predicted,
      pa = n_correct/n_true,
      f1 = (2 * ua * pa) / (ua + pa))
}


