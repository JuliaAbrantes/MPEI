%5. Considere um dado de seis faces numeradas de 1 a 6 lanc¸ado 2 vezes. Assuma que o dado e equilibrado ´
%(mesma probabilidade para todas as faces ficarem para cima). Considere os acontecimentos seguintes:
%"A – a soma dos dois valores e igual a 9”, “B – o segundo valor ´ e par”, “C – pelo menos um dos valores ´
%e igual a 5" e “D – nenhum dos valores ´ e igual a 1”. ´
%(a) Estime por simulac¸ao a probabilidade da cada um dos 4 acontecimentos.

N = 1e5;
exp = randi(6, 2, N);
soma9 = 0;
segundo_par = 0;
ha1_5 = 0;
nao_ha1 = 0;
for i = (1:N)
    if exp(1,i) + exp(2,i) == 9
        soma9 = soma9 +1;
    end
    if rem(exp(2,i), 2) == 0
        segundo_par = segundo_par +1;
    end
    if exp(1,i) == 5 || exp(2,i) == 5
        ha1_5 = ha1_5 +1;
    end
    if exp(1,i) ~= 1 && exp(2,i) ~= 1
        nao_ha1 = nao_ha1 +1;
    end
end
probSoma9 = soma9/N
probSegundoPar = segundo_par/N
probHa1_5 = ha1_5/N
probNaoHa1 = nao_ha1/N