%% Codigo 2- cálculo analítico de probabilidade em séries experiências de Bernoulli
% Dados relativos ao problema 1
% lançamento 2 caras em 3 lancamentos
p = 0.5;
k = 2;
n = 3;
prob = nchoosek(n,k)*p^k*(1-p)^(n-k) % nchoosek(n,k)= n!/(n-k)!/k!
%por experiencia
[r1] = lancamentoMoeda(0.5, 3, 2, 1e5)

%6 ou mais caras em 15 lançamentos
kmin = 6;
n = 15;
prob = 0;
for k = (kmin:n) %6 a 15
    prob = prob + nchoosek(n,k)*p^k*(1-p)^(n-k);
end
prob
%por experiencia
[r2] = lancamentoMoeda(0.5, 15, (6:15), 1e5)
