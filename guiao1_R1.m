%R1 Quantas sequencias diferentes de 10 bits ha? E de n bits?
%simulação
n = 10;
sequencias = rand(n,1e5)<0.5; %experiencia
sequencias_unicas = unique(sequencias', 'row')';
[linhas,colunas] = size(sequencias_unicas); % determina o tamanho da matriz das sequencias unicas
colunas
%análise combinatória
resposta = 2^n
