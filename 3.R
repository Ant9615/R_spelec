library(installr)
library(readxl)
library(tidyverse)
library(dplyr)
library(foreign)
library(ggplot2)

data_csv <- read.csv("http://stats.idre.ucla.edu/stat/data/hsbdemo.csv")
View(data)
#delim은 이상하게 나오니까 쓰지말자(나중에 알고 쓰는걸로)
data_tab <- read_delim("http://stats.idre.ucla.edu/stat/data/hsb2.txt", delim="/t")
View(data_tab)
data_tab
#tible
md <- tibble(height=c(58,33,92), weight=c(198,298,136))
md
class(md)
class(as.data.frame(md))
as.data.frame(md)
#sas,spss파일 부르기
require(haven)
daspaa<-read.spss("http://stats.idre.ucla.edu/stat/data/hsb2.sav")
download.file("http://stats.idre.ucla.edu/stat/data/hsb2.xls","prac_lec.xls",mode = "wb")
daxls <- read_excel("prac_lec.xls")
write.csv(data_csv, file="C://Users//user//Desktop//R특강//11//data_csv.csv")
write.dta(data, file="C://Users//user//Desktop//R특강//11//dacsv.csv")

#data exploration
dd<- read.csv("http://stats.idre.ucla.edu/stat/data/hsbraw.csv")
View(dd)
mean(dd$read)
median(dd$read)
var(dd$read)
ggplot(data=dd, aes(x=write, y=read)) +geom_point()
ggplot(data=dd, aes(x=write)) +geom_histogram(bins=10)
ggplot(dd[dd$math>mean(dd$math),],aes(x=write)) +geom_histogram(bins=10)
ggplot(dd, aes(x=1, y=science)) + geom_boxplot()
table(dd$female)
table(dd$ses)

#요인
str(dd$ses)
dd$ses <- factor(dd$ses, levels=c("low","middle","high"))
str(dd$ses)
levels(dd$ses)
