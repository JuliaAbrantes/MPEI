%7. Considere o conjunto de paginas Web e respetivas hyperligac¸ ´ oes entre si dado pelo diagrama seguinte: ˜
% (c) Altere a matriz H para resolver apenas o problema do ”dead-end”e recalcule o pagerank de cada
% pagina novamente em 10 iterac¸ ´ oes
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
r10 = H^9 * r1;
disp("page rank with spider trap")
disp(r10)

%% (d) Resolva agora ambos os problemas e recalcule o pagerank de cada pagina novamente em 10 ´
% iterac¸oes (assuma ˜ β = 0, 8).
b = 0.8;
H1 = b.*H  +  (1-b)+(zeros(n,1).*1/n); %no spider traps
H1 = H1./sum(H1,1); %normalizar
disp("H")
disp(H1)

disp("check sum of H")
disp(sum(H1,1)) %check

% page rank:
r1 = zeros(n,1)+(1/n);
r10 = H1^9 * r1;
pagerank = sum(r10, 2);
disp("corrected page rank: ")
disp(pagerank)
disp("check sum pagerank")
disp(sum(pagerank))
%C e D tem o mesmo rank (1.4250) B tem rank 1.0298, A e F tem o mesmo page
%rank (0.7356) e por fim E tem rank 0.6490