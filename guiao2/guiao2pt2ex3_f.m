%3. Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
%numero de coroas observados nos ´ 4 lanc¸amentos.
%(f) Com base nos valores teoricos da func¸ ´ ao massa de probabilidade desta distribuic¸ ˜ ao, calcule: ˜
k = (0:4);
n = 4;
p = 0.5;
combNK = factorial(n) ./ (factorial(k) .* factorial(n-k));
pX = combNK .* (p.^k) .* ((1-p).^(n-k))

fX = cumsum(pX)

%% i. a probabilidade de obter pelo menos 2 coroas;
%2 ou mais sucessos = 1 - (1 ou menos sucessos)
i = 1-fX(2)

%% ii. a probabilidade de obter ate 1 coroa;
%0 ou 1 coroa
ii = fX(2)

%% iii. a probabilidade de obter entre 1 e 3 coroas
%prob de obter <= 3 - prob de obter <= 1
iii = fX(4) - fX(2)