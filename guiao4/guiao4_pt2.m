%1. Com as func¸oes que desenvolveu, crie um ˜ Bloom Filter para guardar um conjunto, U1, de 1000 palavras
%diferentes5
%. Use um Bloom Filter de tamanho n = 8000 e k = 3 func¸oes de dispers ˜ ao.
charsmin = 'a':'z';
probs = [  1.4620000e-01;
           1.0400000e-02;
           3.8800000e-02;
           4.9900000e-02;
           1.2570000e-01;
           1.0200000e-02;
           1.3000000e-02;
           1.2800000e-02;
           6.1800000e-02;
           4.0000000e-03;
           2.0000000e-04;
           2.7800000e-02;
           4.7400000e-02;
           5.0500000e-02;
           1.0730000e-01;
           2.5200000e-02;
           1.2000000e-02;
           6.5300000e-02;
           7.8100000e-02;
           4.3400000e-02;
           4.6300000e-02;
           1.6700000e-02;
           1.0000000e-04;
           2.1000000e-03;
           1.0000000e-04;
           4.7000000e-03];
nKeys = 1000;
keys = generate_keys(nKeys , 4, 10, charsmin, probs);
k = 3;
size = 8000;
bloom = filterInnit(size); % innit
for i = 1:nKeys % fill
    bloom = filterAdd(bloom, k, keys{i});
end
%%
%2. Teste o Bloom Filter criado anteriormente, verificando a pertenc¸a de todas as palavras do conjunto U1.
%Obteve algum falso negativo?
allTrue = 1;
for i = 1:nKeys
    allTrue = allTrue && (filterTest(bloom, keys{i}, k) == 1);
end
disp("sem falsos negativos")
disp(allTrue)
%%
%3. Teste o Bloom Filter criado anteriormente, verificando a pertenc¸a de um novo conjunto, U2, com 10000
%palavras todas diferentes das de U1. Indique a percentagem de falsos positivos obtidos.
nKeys2 = 1000;
keys2 = generate_keys(nKeys2, 3, 5, charsmin, probs);
falsoPos = 0;
for i = 1:nKeys2
    falsoPos = falsoPos + filterTest(bloom, keys2{i}, k);
end
disp("porcentagem de falsos positivos prática")
disp(falsoPos/nKeys2)
%%
%4. Compare a percentagem de falsos positivos obtida anteriormente com a estimativa que aprendeu nas TPs
e = exp(1);
disp("probabilidade falso positivo teórica")
disp((1-(e^(-k*nKeys/size)))^k)
%%
%5. Repita os exerc´ıcios 1. e 3. para um numero de func¸ ´ oes de dispers ˜ ao˜ k de 4 ate 10. Fac¸a um gr ´ afico ´
%com a percentagem de falsos positivos em func¸ao de ˜ k. Analisando os resultados, qual o valor otimo ´ k?
%Compare este valor com o valor teorico que aprendeu nas TPs.
K = 4:10;
falsoPos = zeros(1, K(end) - K(1));
bloom = filterInnit(size); %innit
for k = K
    %fill
    for i = 1:nKeys
        bloom = filterAdd(bloom, k, keys{i});
    end
    %check
    falsoPos(k-3) = 0;
    for i = 1:nKeys2
        falsoPos(k-3) = falsoPos(k-3) + filterTest(bloom, keys2{i}, k);
    end
end
plot(K, falsoPos./nKeys2)

%valores teóricos
kOtimo = size * log(2) / nKeys2