library(installr)
library(readxl)
library(tidyverse)
library(dplyr)
library(foreign)
library(ggplot2)

dd$prog_short <- substr(dd$prog, start = 1, stop = 3)
head(dd[c("prog", "prog_short")],n=5)

#grep 
my_char <- c("here", "are", "some", "words", "to", "explore")
grep(pattern = "re", x=my_char)
grep("re", my_char, value = TRUE)

#data frame에 새 변수 추가
dd$logwrite <- log(dd$write)
colnames(dd)
ggplot(dd, aes(x=write)) + geom_density()
dd$z <- rep(0,100)
dd$z
str(dd$science)
dd<-mutate(dd,
           logscience = log(science),
           sciencerank = min_rank(science),
           sciencegrade = cut(science, 
                              breaks = c(0,35,45,55,65,80),
                              labels = c("F","D","C","B","A")),
           zscience = scale(science))
ggplot(dd, aes(x=zscience)) + geom_density()

max_read <- dd[dd$read==max(dd$read),]
max_read
dd_fil_ma <- dd[(dd$female=="female"& dd$math>65 & dd$write >65 ),]
head(dd_fil_ma,3)
dd_fil_m <- filter(dd, (prog=="general"|prog=="academic")&math<50)
head(dd_fil_m,3)
d_use <- select(dd, id, female, read, write)
c_use <- select(dd, id,ses, prog,read)
c_drop <- select(dd, -c(ses,prog, read))
c_all <- cbind(c_use, c_drop)
head(c_all,5)
