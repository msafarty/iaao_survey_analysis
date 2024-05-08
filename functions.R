hist_func <- function(x) { 
  # Feels like a good default, then causes less functions to be created:
  x$Response <- ifelse(!is.na(x$Response), str_wrap(x$Response, width = 15), x$Response)
  # Generate ggplot2 histogram based on PTAPP uniform data format:
  hist <- ggplot2::ggplot(x, aes(Response)) + ggplot2::geom_bar() + theme_minimal() + ggplot2::labs(title = x$question_desc, subtitle = x$Question)
  print(hist)
}