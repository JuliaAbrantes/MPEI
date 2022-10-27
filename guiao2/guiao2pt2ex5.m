%5. Suponha que o(s) motor(es) de um aviao pode(m) falhar com probabilidade ˜ p e que as falhas sao in- ˜
%dependentes entre motores. Suponha ainda que o aviao se despenha se mais de metade dos motores ˜
%falharem. Nestas condic¸oes, prefere voar num avi ˜ ao com ˜ 2 ou 4 motores? Utilize a distribuic¸ao que ˜
%considerar mais adequada.
%% caso 2 motores
k = 0:2;
n = 2;
P = 0:0.2:1;
combNK = factorial(n) ./ (factorial(k) .* factorial(n-k));
pX = zeros(length(P), length(k));
n = 1;
for p = P
    pX(n,:) = combNK .* (p.^k) .* ((1.-p).^(n-k));
    n = n+1;
end
pX(:,2)
%para cair precisa ter sucesso em 2

%% caso 4 motores

k = 0:2;
n = 4;
P = 0:0.2:1;
combNK = factorial(n) ./ (factorial(k) .* factorial(n-k));
pX = zeros(length(P), length(k));
n = 1;
for p = P
    pX(n,:) = combNK .* (p.^k) .* ((1.-p).^(n-k));
    n = n+1;
end
pX(:,3)
