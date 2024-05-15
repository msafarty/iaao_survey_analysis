# melissa asked for a pivot/summary table; this would be a start and would be more readable once more responses are transformed

ptpa23 %>% group_by(question_num, question_desc, sub_question, category_desc, response) %>% summarize(count=n()) %>% data.frame() %>%  write.csv('testPivot.csv', row.names = F)
