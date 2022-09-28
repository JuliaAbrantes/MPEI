% R6 Lanc¸am-se dois dados e toma-se nota da soma de pontos obtida.
% (a) Indique o espac¸o de amostragem (conjunto de valores poss´ıveis) da soma.
% [2,3,4,5,6,7,8,9,10,11,12]
% (b) Calcule a probabilidade de se obter a soma 9.
% analise
analise = 1/11
% simulação
nDados = 2;
nExp = 1e7;
experiencias = randi(6,nDados,nExp);
sum(experiencias)
result = sum(sum(experiencias,1)==9); % quantas das somas são 9
probabilidade = result / nExp

