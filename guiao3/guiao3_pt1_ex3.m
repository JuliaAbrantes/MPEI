%3. Gere aleatoriamente uma matriz de transic¸ao de estados para uma cadeia de 20 estados (identificados de ˜
%1 a 20) recorrendo a func¸ ` ao do Matlab ˜ rand. Com base nessa matriz:
%(a) Confirme que a matriz de transic¸ao de estados ˜ e estoc ´ astica
n = 20;
T = rand (n, n);
s = sum(T);
T = T./s;
sum(T)

%(b) Qual a probabilidade de o sistema, comec¸ando no estado 1, estar no estado 20 apos 2 transic¸ ´ oes? E ˜
%apos 5? E ap ´ os 10? E ap ´ os 100? Apresente os resultados em percentagem e com 5 casas decimais. ´
%O que conclui?
x0 = zeros(n, 1);
x0(1) = 1;
x2 = T^2 * x0;
x2(20)
x10 = T^10 * x0;
x10(20)
x100 = T^100 * x0;
x100(20)