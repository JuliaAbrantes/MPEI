%4. Considere uma festa em que esta presente um determinado n ´ umero ´ n de pessoas.
%(a) Qual deve ser o menor valor de n para o qual a probabilidade de duas ou mais pessoas terem a
%mesma data de aniversario (m ´ es e dia) ˆ e superior a 0,5 (assuma que um ano tem sempre 365 dias)?
n = 2;
prob = 0;
while prob <= 0.5
    exp = randi(365, n, N);
    prob = unique(exp)
    n=n+1;
end