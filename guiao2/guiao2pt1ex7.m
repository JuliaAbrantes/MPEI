%7. Considere que uma empresa tem 3 programadores (Andre, Bruno e Carlos) e que a probabilidade de um ´
%programa de cada um deles ter problemas ("bugs”) e o numero de programas desenvolvidos assumem os ´
%valores apresentados na tabela seguinte.

%(a) Qual e a probabilidade de o programa ser do Carlos?
%p(C | E) = p(C e E) / p(E)
%p(E) = p(A e E) + p(B e E) + p(C e E) = p(E dado A) * p(A) + ...
%20/100 * 0,01 + 30/100 * 0,05 + 50/100 * 0,001 = 0,0175

Nexp = 1e5;

nProgA = 20;
pErrA = 0.01;
A = sum(rand(nProgA, Nexp)<pErrA, 1);
nProgB = 30;
pErrB = 0.05;
B = sum(rand(nProgB, Nexp)<pErrB, 1);
nProgC = 50;
pErrC = 0.001;
C = sum(rand(nProgC, Nexp)<pErrC, 1);

nProgs = nProgA + nProgB + nProgC;
nErros = sum(A) + sum(B) + sum(C);

%prob de C dado Erro é o numero de erros de C em todos os erros 
% P(C e E)/p(E)
pCdadoE = sum(C)/nErros

%(b) De quem e mais prov ´ avel ser o programa? 
pBdadoE = sum(B)/nErros
pAdadoE = sum(A)/nErros