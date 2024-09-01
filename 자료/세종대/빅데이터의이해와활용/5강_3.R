# 벡터
v1 <- c(1, 2, 3, 4, 5) # v1에 1,2,3,4,5로 구성된 벡터를 입력
v1
v2 <- c(1:5) # v2에 1,2,3,4,5로 구성된 벡터를 입력
v2
rep(c(1,2), times=2) # 1과 2로 구성된 벡터를 2회 반복
rep(c(2,4), length=6) # 2와 4로 구성된 벡터를 반복하되 크기는 6으로 지정
seq(1, 10, by=2) # 1에서 10까지 2씩 증가되는 벡터를 작성
x <- c(10,35,20,80,90) # x에 벡터를 입력
sum(x) # x의 합계를 구함
mean(x) # x의 평균을 구함

# 행렬
m1 <- matrix(1:12, nrow=3) # 3행4열 행렬 
m1
m1[2,3] # 2행3열의 원소 출력 
m2 <- matrix(1:9, ncol=3) # 3행3열 행렬
m2
m3 <- matrix(1:9, nrow=3, dimnames = list(c("r1","r2","r3"), c("c1","c2","c3"))) # 행과 열에 이름 지정
m3

# 배열
array(1:6) # 1차원 배열 생성
array(1:6,c(2,3)) # 2차원 배열 생성
array(1:8,c(2,2,2)) # 3차원 배열 생성

# 데이터 프레임
name <- c("LEE","KIM","BONG","PARK")
kor <- c(100,50,88,75)
eng <- c(95, 68, 90, 100)
mat <- c(100, 45, 75, 80)
data.frame(name, kor, eng, mat) # name, kor, eng, mat로 데이터 프레임 생성

# 리스트
v <- c(1:6) # 벡터 생성
m <- matrix(c(1:12), nrow=3) # 행렬 생성  
l <- list(v,m) # 리스트 생성 
l
length(l) # 자료의 개수
mode(l) # 자료의 형태

# 공공데이터
pop_gijang <- read.csv("gijang.csv") # gijang.csv를 읽어옴
pop_gijang
head(pop_gijang) # 상위 6개의 데이터 확인 
tail(pop_gijang) # 하위 6개의 데이터 확인
class(pop_gijang) # 데이터 프레임 구조임을 확인
str(pop_gijang) # 행, 변수, 각 변수의 구조를 확인
summary(pop_gijang) # 데이터 요약

