%2. Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100.
%(a) Descreva o espac¸o de amostragem da experiencia aleat ˆ oria, retirar uma nota da caixa, e as proba- ´
%bilidades dos acontecimentos elementares.
%S = {5, 5, 5, (90 notas de 5), 5, 50, 50, 50, 50 (9 notas de 50), 50, 100}
%p(x = 5) = 90/100
%p(x = 50) = 9/100
%p(x = 100) = 1/100

%(b) Considere agora a variavel aleat ´ oria ´ X como sendo o valor de uma nota retirada a sorte da caixa `
%acima descrita. Descreva o espac¸o de amostragem e a func¸ao massa de probabilidade de ˜ X.
%Sx = {5, 50, 100}
%função massa de prob: fx = {0.9, 0.09, 0.01}
xi = [5, 50, 100];
pxi = [0.9, 0.09, 0.01];
stem(xi, pxi);
hold on
%(c) Determine a func¸ao distribuic¸ ˜ ao acumulada de ˜ X e efectue a sua representac¸ao gr ˜ afica em Matlab.
xidist = [0, 5, 50,  100, 110];
pxidist = [0, pxi, 0];
stairs(xidist, pxidist)
hold off
