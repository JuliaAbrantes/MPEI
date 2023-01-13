%4. Considere uma festa em que esta presente um determinado n ´ umero ´ n de pessoas.
%(a) Qual deve ser o menor valor de n para o qual a probabilidade de duas ou mais pessoas terem a
%mesma data de aniversario (m ´ es e dia) ˆ e superior a 0,5 (assuma que um ano tem sempre 365 dias)?
n = 2;
N = 1e5;
prob = 0;
while prob <= 0.5
    success = 0;
    exp = randi(365, n, N);
    for i = (1:N)
        if length(unique(exp(:,i))) < n
        %se o comprimento dos valores unicos for menor que num pessoas
            success = success + 1;
        end
    end
    prob = success/N;
    n=n+1;
end
n