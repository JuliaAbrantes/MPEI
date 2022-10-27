%3. Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
%numero de coroas observados nos ´ 4 lanc¸amentos.
%(d) Calcule os valores teoricos da func¸ ´ ao massa de probabilidade de ˜ X e compare-os com os valores
%estimados por simulac¸ao obtidos em (a).

%analiticamente
k = (0:4);
n = 4;
p = 0.5;
combNK = factorial(n) ./ (factorial(k) .* factorial(n-k));
pX = combNK .* (p.^k) .* ((1-p).^(n-k))

%% experimentalmente
Nexp = 1e5;
nlan = 4;
exp = sum(rand(nlan, Nexp) < 0.5);

x = 0:nlan;
px = zeros(1, nlan+1);
for i = x
    px(i+1) = length( exp(exp==i) )/Nexp;
end
px