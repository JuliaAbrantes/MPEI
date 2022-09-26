%Qual e a probabilidade de obter pelo menos 6 caras em 15 lancamentos de uma moeda equilibrada?
N = 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 6; %numero de caras
n = 15; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)>=k; %pelo menos, significa sucesso para k ou mais caras
probSimulacao= sum(sucessos)/N
