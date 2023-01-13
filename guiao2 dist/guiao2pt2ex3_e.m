%3. Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
%numero de coroas observados nos ´ 4 lanc¸amentos.
%(e) Calcule os valores teoricos de ´ E[x] e de V ar(X) e compare-os com os valores obtidos em (b).

%analiticamente
k = (0:4);
n = 4;
p = 0.5;
combNK = factorial(n) ./ (factorial(k) .* factorial(n-k));
pX = combNK .* (p.^k) .* ((1-p).^(n-k))

Ex = sum(pX.*k)
var = sum(pow2(k-valEsperado) .* px)
desv = sqrt(var)

%% experimentalmente
Nexp = 1e5;
nlan = 4;
exp = sum(rand(nlan, Nexp) < 0.5);

X = 0:nlan;
pX = zeros(1, nlan+1);
for x = X
    pX(x+1) = length( exp(exp==x) )/Nexp;
end
valEsperado = sum(pX.*X)
variancia = sum(pow2(X-valEsperado) .* pX)
desvioPadrao = sqrt(variancia)