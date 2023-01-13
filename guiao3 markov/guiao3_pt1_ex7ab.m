%7. Considere o conjunto de paginas Web e respetivas hyperligac¸ ´ oes entre si dado pelo diagrama seguinte: ˜
%(a) Usando a matriz H das hyperligac¸oes, obtenha a estimativa do pagerank de cada p ˜ agina ao fim de ´
%10 iterac¸oes. Relembre que deve considerar (i) a mesma probabilidade de transic¸ ˜ ao de cada p ˜ agina ´
%para todas as paginas seguintes poss ´ ´ıveis e (ii) a probabilidade da pagina inicial deve ser igual para ´
%todas as paginas. Qual/quais a(s) p ´ agina(s) com maior pagerank e qual o seu valor?
n = 6;
H = [0,  0, 0, 0,1/3, 0;
     1,  0, 0, 0,1/3, 0;
     0,1/2, 0, 1,  0, 0;
     0,1/2, 1, 0,  0, 0;
     0,  0, 0, 0,  0, 0;
     0,  0, 0, 0,1/3, 0;];

H(:, sum(H,1) == 0) = 1/n; %no dead ends

% page rank:
r1 = zeros(n,1)+(1/n);
r10 = H^9 * r1
sum(r10, 2)

% (b) Identifique a ”spider trap”e o ”dead-end”contidos neste conjunto de paginas.
% spider trap: C e D
% dead end: F