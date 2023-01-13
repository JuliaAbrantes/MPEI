%(c) Suponha que para uma fam´ılia com 2 filhos escolhida ao acaso, sabemos que um dos filhos e´
%rapaz. Qual a probabilidade do outro filho ser tambem rapaz? Determine o valor te ´ orico desta ´
%probabilidade e estime a mesma probabilidade por simulac¸ao.

probAnalise = 1/3
%ter um rapaz e depois uma rapariga, ter uma rapariga e depois um rapaz,
%ter dois rapazes(1 alternativas em 3)

N = 1e5; %numero de experiencias
p = 0.5; %probabilidade de sucesso
k = 2; %numero de sucessos requerido
n = 2; %numero de tentativas
tentativas = rand(n,N) > p;
num = sum(tentativas, 1); %0, 1 ou 2 rapazes
validas = num(num ~= 0); %1 ou 2 rapazes
countValidas = sum(num ~= 0); %quantos são 1 ou 2
sucessos = validas == 2; %2 rapazes sabendo que pelo menos 1 é rapaz

probSimulacao = sum(sucessos)/countValidas %probabilidade por simulação
