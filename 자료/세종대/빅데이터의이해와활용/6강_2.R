ans <- c(62.6,30.8,29.1,20.7,19.5) # 비율을 벡터로 작성
names(ans) <- c("여행","학업","연애","아르바이트","동아리") # 객체의 이름을 설정
pie(ans,col=rainbow(5),main="대학시절 꼭 해야하는 것") # 원 그래프 작성

barplot(ans, col=rainbow(5),main="대학시절 꼭 해야하는 것") # 막대 그래프 작성

data("ChickWeight") # ChickWeight 데이터 셋을 로드함
head(ChickWeight) # 상위 6개 데이터 확인
attach(ChickWeight) # 변수를 이름만으로 접근
stem(weight) # 줄기잎 그림 작성
stem(weight, scale=2) # 줄기를 2배로 작성

boxplot(weight, col="yellow") # 상자 그림 작성
boxplot(weight, col="yellow", horizontal = T, main="ChickWeight") # 상자 그림을 수평으로 작성
(boxstats <- boxplot(weight, col="yellow")) # 상자 그림의 반환값을 확인

titanic <- read.csv("titanic.csv", header=T)
str(titanic) #속성과 개수, 미리보기값 제공
head(titanic) #처음 6행을 보여줌
tail(titanic) #마지막 6행을 보여줌
summary(titanic) # 요약 통계를 보여줌
attach(titanic) #변수를 이름만으로 접근
getwd()

library(ggplot2) # 시각화를 위한 패키지
library(dplyr) # 데이터 처리 패키지
titanic %>% ggplot(aes(fare))+ geom_density( ) # 요금의 밀도 곡선
titanic %>% ggplot(aes(age,col=sex))+geom_density( ) # 성별 밀도 곡선

par(mfrow=c(1,2)) # 1행2열로 분할
mosaicplot(table(ifelse(titanic$survived==1,"survived","Dead"),sex),main="",cex=1.2,color=TRUE) # 성별 생존 모자이크 플롯
mosaicplot(table(ifelse(titanic$survived==1,"Survived","Dead"),pclass),main="",cex=1.2,color=c("skyblue","pink","violet")) # 등급별 생존 모자이크 플롯


titanic %>% ggplot(aes(age,log(fare),color=factor(survived),shape=factor(sex)))+geom_point()+geom_jitter() # 나이, 요금, 생존, 성별을 산점도로 확인
