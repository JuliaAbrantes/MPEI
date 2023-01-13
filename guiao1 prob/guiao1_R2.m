% R2 Quantas sequencias diferentes de 10 sımbolos do alfabeto (A,C,G,T) ha? E de n sımbolos do mesmo alfabeto?
% simulação
n = 10;
alfabeto = 4;
sequencias = randi(alfabeto, n, 1e7); % experiencia
sequencias_unicas = unique(sequencias', 'row'); % a matriz foi invertida para usar unique
[linhas,~] = size(sequencias_unicas);
linhas
% análise combinatória
resposta = alfabeto^n
