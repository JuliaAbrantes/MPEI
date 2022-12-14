%6. Considere a cadeia de Markov com o diagrama de transic¸ao de estados seguinte:
%(a) Defina em Matlab a matriz de transic¸ao de estados ˜ T, com Tij sendo a probabilidade de ir do estado
%j para o estado i num unico passo.
T = [.8  0 .3  0  0 ;
     .2 .6 .2  0  0 ;
      0 .1 .4  0  0 ;
      0 .3  0  1  0 ;
      0  0 .1  0  1];
%% 
%(b) Fac¸a um grafico com a probabilidade de, comec¸ando no estado 1, estar no estado 2 ao fim de ´ n
%passos, com n a variar de 1 ate 100. Justifique o que observa.
nmax = 100;
n = (1:nmax);
x0 = zeros(5, 1);
x0(1) = 1;
t = zeros(1,nmax);
t3 = zeros(1,nmax);
for i = n
    temp = T^i * x0;
    t(i) = temp(2);
    t3(i) = temp(5);
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
plot(n, t3);
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
disp("passos até absorção começando 1 (sum col 1)")
disp(sum(F(:,1), 1))
disp("passos até absorção começando 2 (sum col 2)")
disp(sum(F(:,2), 1))
disp("passos até absorção começando 4 (sum col 4)")
disp(sum(F(:,3), 1))
%%
%(g) Comec¸ando no estado 1, qual e a probabilidade de absorc¸ ´ ao do estado 3? E do estado 5? Verifique ˜
%a coerencia destes valores com o que observou na al ˆ ´ınea 6 (c).
R = T(4:5, 1:3)
B = R*F
disp("prob. de absorção do estado 3 começando no 1")
disp(B(1,1)) %pos 1 em B equivale a estado 3
disp("prob. de absorção do estado 5 começando no 1")
disp(B(2,1)) %pos 3 em B equivale a estado 5
% COMPARAÇÃO: a probabilidade de estar no estado 3 após n(1 a 100)
% iterações tende para 0.0526, e através da matriz B podemos verificar a
% probabilidade real sendo 0.0526



