%1. Considere a variavel aleat ´ oria ´ X correspondente a face que fica para cima no lanc¸amento de 1 dado. `
%Usando os valores teoricos: ´
%(a) produza um grafico, em Matlab, que represente a func¸ ´ ao massa de probabilidade ˜
%1 de X;
xi = 1:6; %valores possíveis
pxi = 1/6 * ones(1,6); %vetor com 6 um sextos
stem(pxi); %função massa
hold on
%(b) num segundo grafico da mesma figura, desenhe o gr ´ afico da func¸ ´ ao de distribuic¸ ˜ ao acumulada (use ˜
%a func¸ao˜ stairs do Matlab).

xidist = [0, xi, 7]; %y do gráfico
pxidist = [0, pxi, 0]; %probabilidade de assumir cada valor do y
stairs(xidist, cumsum(pxidist)); %y=0:7 e x=[0, 0+1/6, 0+1/6+1/6, 0+1/6+1/6+1/6, ... 0+n/6+0]
hold off