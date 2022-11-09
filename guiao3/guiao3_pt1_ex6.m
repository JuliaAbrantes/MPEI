%(a) Defina em Matlab a matriz de transic¸ao de estados ˜ T, com Tij sendo a probabilidade de ir do estado
%j para o estado i num unico passo.
T = [.8 0 .3 0 0 ;
    .2 .6 .2 0 0 ;
    0 .1 .4 0 0 ;
    0 .3 0 1 0 ;
    0 0 .1 0 1];
%(b) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 2 ao fim de ´ n
%passos, com n a variar de 1 ate 100. Justifique o que observa.

nmax = 100;
n = (1:nmax);
x0 = zeros(5, 1);
x0(1) = 1;
t = zeros(1,nmax);
for i = n
    temp = T^i * x0;
    t(i) = temp(4);
end
plot(n,t);

%a princípio, a probabilidade aumenta a medida que o numero de iterações
%aumenta, porque a variável aleatória "explora os estados" mas depois de
%alcançar seu pico na 3ª iteração, começa a ser absorvida pelos estados 3 e
%5, logo, a chance de estar no estado 3 tende a 0