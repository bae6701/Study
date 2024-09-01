data() # R이 제공하는 기본 데이터 목록
iris # 붓꽃의 품종에 관한 데이터
str(iris) # 데이터의 형식과 내용을 요약
women # 미국 30대 여성의 평균 키와 몸무게 데이터
str(women) # 데이터 구조, 변수 개수, 변수 명, 관찰치 개수, 관찰치의 미리보기
v1 <- c(10,30,80,20) # 벡터 v1에 10, 30, 80, 20을 입력
v1 # v1을 출력
data1 <- read.table("ex-1.txt",header = T)
data1
data2 <- read.csv("ex-2.csv")
data2
website="http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
data3 <- read.table(website,header=T,sep=",")
data3
View(data3) # 해당 데이터셋을 출력
write.table(iris,"iris1.txt") # 각 행마다 행 번호 부여
write.table(iris,"iris2.txt",row.name=F,sep="\t") # 행 번호 삭제, 구분기호로 탭 사용
write.table(iris,"iris3.txt", row.name=F,sep=",") # 행 번호 삭제, 구분기호로 콤마 사용
