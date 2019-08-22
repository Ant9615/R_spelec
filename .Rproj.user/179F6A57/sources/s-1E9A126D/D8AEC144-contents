#installr  패키지는 r을 쉽게 업로딩 해주고,r개발에서 필요한 소프트웨어를 제공 
#tidy data를 만들기 위해서 만들어졌으며, 하나의 열은 하나의 변수일 때, 하나의 행은 하나의 케이스일 때, 하나의 값은 하나의 셀일 떄의 조건을 만족할 떄 데이터를 분석과 저장을 쉽게하기 위한 패키지
library(installr)
library(tidyverse)
library(dplyr)

#터미널의 로직 같은 것 
getwd()

#scores
scores <- c(gu=23, kim=25, jeong=36, ju=39)
scores[c("gu","kim")]
scores[c(FALSE,TRUE, TRUE, FALSE)]
scores <30
scores[scores<30]

#리스트 생성
li <- list(3,
           lec_n=c("경영과학","알고리즘", "통계분석"),
           score=c(78,79))
li
mean(li$score)
mary_info <- list(class=c("생산관리", "경영학", "공업회계","실험계획법"),
                  member=c("kim", "jang", "gu"),
                  gpa=95.5)
mary_info$member[3]
#클래스 변수에 실험계획법 데이터 조회하기 mary_info[[1]][[4]]는 첫번 쨰 변수에 4번 째 데이터 
mary_info$class[4]
mary_info[[1]][[4]]

#matrix 
a <- matrix(1:100, nrow = 20) 
a
b <- matrix(1:100, nrow = 20, byrow = T)
b
View(b)
a[15, 4]
b[15, 4]
b[,4]
b[4,]

#dataframe 
c <- data.frame(mem=c(TRUE, TRUE, FALSE, FALSE, TRUE),
                   score=c(34,55,22,44,88))
c
c[3,2]
c[1:3, "score"]
c[,"mem"]
c[2,2]
c[[2]][[2]]
c$score[2]

#column 변수 명 바꾸기 
colnames(c)<-c("stu","num")
c
colnames(c)[1] <- c("mem")
c
dim(c)
str(c) #str=structure
class(c)
colMeans(c)

#lm=linear model
model1 <- lm(mem~score, data=c)
class(model1)
summary(model1)
summary(c)

v<-data.frame(letters=c("a", "b", "c"), numbers=c(1,2,3))
v
v[[1]][3]
v$letters[[3]]
v[3,1]
