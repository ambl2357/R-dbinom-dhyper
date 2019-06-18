# R-dbinom-dhyper

rm(list=ls())

dbinom(5,10,0.5) #10번중 3번 0.5(동전던지기)확률로 나올 확률

dhyper(4,4,6,9) #4명은 남자 6명은 여자 9명 을뽑는데 4명이 남자일 경우


a=100
approx <- numeric(length=a)
for(i in 1:a){
  approx[i]=dhyper(3,4*i,6*i,10)
}
approx

plot(approx[2:100]) # 해단 연산의 배열 인자값을 점으로 표시한다.
abline(h=dbinom(3,10,0.4),col="red")  #해당 조건에 빨간색의 수평선을 그린다.
