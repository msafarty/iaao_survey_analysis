# melissa asked for a pivot/summary table; this would be a start and would be more readable once more responses are transformed
library(dplyr)
ptpa23 %>% dplyr::group_by(question_num, question_desc, sub_question, category_desc, response) %>% dplyr::summarize(count=n()) %>% data.frame() %>%  write.csv('testPivot.csv', row.names = F)
