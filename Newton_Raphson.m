clear; clc;
x(1) = 0;

step= input("N-R yöntemi için adım sayısını giriniz:");

for i=1:step

	x(i+1) = x(i)-f(x(i))/df(x(i));
    hata = abs(x(i+1)-x(i));
    
end

fprintf("%d adımla yaklaşık kök %f dir \n",step,x(end));