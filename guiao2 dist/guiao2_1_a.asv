%(a) Obtenha por simulac¸ao uma estimativa da probabilidade do acontecimento "ter pelo menos um ˜
%filho rapaz" em fam´ılias com 2 filhos.

N = 1e5; %numero de experiencias
p = 0.5; %probabilidade de sucesso
k = 1; %numero de sucessos requerido
n = 2; %numero de tentativas
tentativas = rand(n,N) > p;
sucessos= sum(tentativas)>=k; %1 sucesso ou mais

probSimulacao = sum(sucessos)/N %probabilidade por simulação

%(b) Determine o valor teorico do acontecimento da al ´ ´ınea anterior e compare-o com a estimativa obtida
%por simulac¸ao. Os valores s ˜ ao iguais? Porqu ˜ e?
probAnalise = 3/4
%ter um rapaz e depois uma rapariga, ter uma rapariga e depois um rapaz,
%ter dois rapazes, ter duas raparigas (3 alternativas em 4)