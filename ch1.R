rm(list=ls())

dbinom(5,10,0.5) #10���� 3�� 0.5(����������)Ȯ���� ���� Ȯ��

dhyper(4,4,6,9) #4���� ���� 6���� ���� 9�� ���̴µ� 4���� ������ ���


a=100
approx <- numeric(length=a)
for(i in 1:a){
  approx[i]=dhyper(3,4*i,6*i,10)
}
approx

plot(approx[2:100]) # �ش� ������ �迭 ���ڰ��� ������ ǥ���Ѵ�.
abline(h=dbinom(3,10,0.4),col="red")  #�ش� ���ǿ� �������� ������ �׸���.