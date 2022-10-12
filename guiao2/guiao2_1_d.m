%(d) Sabendo que o primeiro filho de uma fam´ılia com 2 filhos e rapaz, determine por simulac¸ ´ ao a ˜
%probabilidade do segundo filho ser rapaz. O que se pode concluir do resultado obtido relativamente
%a independ ` encia de acontecimentos?

probAnalise = 1/2
%ter um rapaz e depois uma rapariga, ter um rapaz e depois um rapaz,
%(1 alternativas em 2)

N = 1e5; %numero de experiencias
p = 0.5; %probabilidade de sucesso
k = 2; %numero de sucessos requerido
n = 2; %numero de tentativas
tentativas = rand(n,N) > p;
num = sum(tentativas); %numero de filhos rapazas
validas = num(tentativas(1,:) == 1); %numero de filhos rapazes tal que o 1º é rapaz
countValidas = sum(tentativas(1,:) == 1); %quantos tem o primeiro filho rapaz
sucessos = sum(validas,1) == 2; %2 rapazes sabendo que o 1º é rapaz

probSimulacao = sum(sucessos)/countValidas %probabilidade por simulação
