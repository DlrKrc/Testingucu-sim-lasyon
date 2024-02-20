clc
clear
tekrar=10000
n=50
mu=10
s=4 %standart sapma
ALFA=0.05
j=0;
for mu1=10:0.1:15
    j=j+1;
    say=0;
for i=1:tekrar
x= normrnd(mu1,s,1,n);     % parametreleri mu1, sigma=4 olan normal da��l�mdan
ort=mean(x);               % n �apl� �rnek.H1 in do�rulu�u alt�nda veri
                           % �retmek
               
LR(i)=(ort-mu)/(s/sqrt(n)); % varyans�n B�L�N�YOR olmas� ko�ulu alt�nda mu=10 
                            % hipotezinin testi i�in likelihood ratio(LR) yoluyla 
                            % elde edilmi� test istatisti�i. H0 �n do�rulu�u
                            % alt�nda LRnin de�erini hesaplama
kLR1=-1.9559;
kLR2=1.9568;
if LR(i)<=kLR1 | LR(i)>=kLR2
    say=say+1;
end
end
POWER(j)=say/tekrar;
end
POWER;
r=10:0.1:15
plot(r,POWER)
