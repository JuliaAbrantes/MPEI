%3. Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
%numero de observados nos ´ 4 lanc¸amentos.
%(b) Estime o valor esperado, a variancia e o desvio padr ˆ ao de ˜ X com base em pX(x).
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