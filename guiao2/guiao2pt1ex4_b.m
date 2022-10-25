%4. Considere uma festa em que esta presente um determinado n ´ umero ´ n de pessoas.
%(b) Qual deve ser o valor de n para que a probabilidade da al´ınea anterior passe a ser superior a 0,9?

n = 20;
N = 1e5;
prob = 0;
while prob <= 0.9
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