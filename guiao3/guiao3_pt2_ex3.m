%3. Considere as paginas web com as ligac¸ ´ oes apresentadas na figura:
%(a) Usando a matriz da Google A, com β = 0.85, obtenha a estimativa do pagerank de cada pagina ´
%usando um metodo iterativo, repetindo o processo iterativo de c ´ alculo at ´ e que a diferenc¸a de page- ´
%rank entre duas iterac¸oes n ˜ ao exceda ˜ 0.01 em valor absoluto para todas as paginas. As colunas e ´
%linhas da matriz devem seguir a ordem alfabetica dos nomes das p ´ aginas
%Quais as paginas com o menor e maior pagerank e qual o seu valor ?
n = 6;
b = 8.5;
A = [0, 1/2, 1/2,  0, 1/4, 0;
     1,   0,   0,  0, 1/4, 0;
     0,   0,   0,  1, 1/4, 0;
     0,   0, 1/2,  0, 1/4, 1;
     0,   0,   0,  0,   0, 0;
     0, 1/2,   0,  0,   0, 0];

r1 = zeros(n, 1) + 1/n;
%%
A1 = A;
A2 = A*A;
while true
    A1 = A2;
    A2 = A2*A;
    if(all(A2-A1 < 0.01, "all"))
        break
    end
end
pageRank = sum(A2, 2);
pageRank = pageRank./sum(pageRank) %normalizar
sum(pageRank) %check
%a pagina com maior page reank é a pagina "a.pt" (indice 1), e a com menor 
% é "e.com" (indice 5), sendo ranqueada como 0

%%
%(b) Confirme os valores de pagerank obtidos usando um processo nao iterativo.

M=[A-eye(n);
   ones(1, n)];
x = zeros(n+1, 1);
x(end) = 1;
steady = M\x
sum(steady) %check

%encontramos valores muito próximos



