#' Calculate overall accuracy metrics for predicted LCZ for a given dataset
#' 
#' @param dat A dataframe with at least two variables: "lcz" and "lcz_predicted"
#' that represent LCZ classes and range from 0 to 17
#' @return list of three values, OA, OA_urb, and OA_nat
#' @examples
#' get_oa_metrics(dat=data.frame(lcz = as.factor(c(1,2,12,13)),
#'                                     predicted_lcz = as.factor(c(1,3,12,13))))

get_oa_metrics <- function(dat){
  dat <- dat %>%
    mutate(lcz = as.numeric(lcz),
           lcz_predicted = as.numeric(lcz_predicted),
           typ = ifelse(lcz <= 10, 
                        "urb",
                        "nat"),
           correct = ifelse(lcz==lcz_predicted,
                            "correct",
                            "incorrect")) %>%
    count(typ, correct)
  # split up urban and natural
  urb <- dat %>%
    filter(typ == "urb")
  nat <- dat %>% 
    filter(typ == "nat")
  # calculate proportions for all three
  oa <- sum(dat$n[which(dat$correct == "correct")]) / sum(dat$n)
  oa_urb <- sum(urb$n[which(urb$correct == "correct")]) / sum(urb$n)
  oa_nat <- sum(nat$n[which(nat$correct == "correct")]) / sum(nat$n)
  # send back
  tibble("oa" = oa, "oa_urb" = oa_urb, "oa_nat" = oa_nat)
}