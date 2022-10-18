%(e) Considere uma fam´ılia com 5 filhos. Sabendo que pelo menos um dos filhos e rapaz, obtenha por ´
%simulac¸ao uma estimativa para a probabilidade de um dos outros (e apenas um) ser tamb ˜ em rapaz

probAnalise = 10*(0.5)^5/(1-(0.5)^5)
%ter 2 rapazes em 2^5 diferentes combinações

N = 1e5; %numero de experiencias
p = 0.5; %probabilidade de sucesso
k = 2; %numero de sucessos requerido
n = 5; %numero de tentativas
tentativas = rand(n,N) > p;
num = sum(tentativas); %numero de filhos rapazes
validas = num(num >= 1); %numero de filhos rapazes tal que 1 é rapaz
countValidas = sum(num >= 1); %quantos tem mais que 1 rapaz
sucessos = sum(validas,1) == k; %2 rapazes sabendo que o 1 é rapaz

probSimulacao = sum(sucessos)/countValidas %probabilidade por simulação
