library(tidytext)
library(readr)
library(dplyr) 
library(ggplot2) 
library(wordcloud2)

text <- read_file("trump.txt") # 파일을 읽음
text
text <- data_frame(text) # 자료를 data frame으로 바꿈

tidy_text <- text %>% unnest_tokens(word,text) # 텍스트를 개별 토큰으로 분해
tidy_text <- tidy_text %>% anti_join(stop_words) # 불용어 제거

tidy_text %>% count(word, sort=T) %>%
  filter(n>1) %>% # 2번 이상 나온 단어를 대상으로 
  mutate(word=reorder(word,n)) %>% # 단어 빈도순으로 나열
  ggplot(aes(word,n)) + geom_col() + coord_flip() # 빈도를 나타낸 그래프를 그림

tidy_text %>%
  count(word,sort=T)%>%
  filter(n>2) %>%
  wordcloud2() # 워드 클라우드 작성
