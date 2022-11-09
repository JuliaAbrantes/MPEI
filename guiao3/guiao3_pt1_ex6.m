%6. Considere a cadeia de Markov com o diagrama de transic¸ao de estados seguinte:
%(a) Defina em Matlab a matriz de transic¸ao de estados ˜ T, com Tij sendo a probabilidade de ir do estado
%j para o estado i num unico passo.
T = [.8 0 .3 0 0 ;
    .2 .6 .2 0 0 ;
    0 .1 .4 0 0 ;
    0 .3 0 1 0 ;
    0 0 .1 0 1];
%% 
%(b) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 2 ao fim de ´ n
%passos, com n a variar de 1 ate 100. Justifique o que observa.
nmax = 100;
n = (1:nmax);
x0 = zeros(5, 1);
x0(1) = 1;
t = zeros(1,nmax);
t5 = zeros(1,nmax);
for i = n
    temp = T^i * x0;
    t(i) = temp(2);
    t5(i) = temp(5);
end
plot(n,t);
hold;
%JUSTIFICATIVA: a princípio, a probabilidade aumenta a medida que o numero de iterações
%aumenta, porque a variável aleatória "explora os estados" mas depois de
%alcançar seu pico na 3ª iteração, começa a ser absorvida pelos estados 3 e
%5, logo, a chance de estar no estado 2 tende a 0
%% 
%(c) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 3 ao fim de ´ n
%passos. Na mesma figura, fac¸a um segundo grafico com a probabilidade de, comec¸ando no estado ´
%1, estar no estado 5 ao fim de n passos. Em ambos os casos, considere n a variar de 1 ate 100. ´
%Justifique o que observa.
plot(n, t5);
%JUSTIFICATIVA: a variável aleatória vai ser absorvida pelos estados 3 e 5
%sendo assim, ao longo do tempo podemos notar que a probabilidade de estar
%no estado 5 tende a um valor diferente de 0.
%%
%(d) Determine a matriz Q.
Q = T(1:3, 1:3)
%% 
%(e) Determine a matriz fundamental F.
F = inv(eye(3) - Q)
%%
%(f) Qual a media (valor esperado) do n ´ umero de passos at ´ e´ a absorc¸ ` ao comec¸ando no estado 1? E ˜
%comec¸ando no estado 2? E se comec¸ando no estado 4?
sum(F(:,1), 1)
sum(F(:,2), 1)
sum(F(:,3), 1)




