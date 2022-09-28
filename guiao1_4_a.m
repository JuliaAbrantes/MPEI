%chance de sair 2 caras em 3 lancamentos
[result1] = lancamentoMoeda(0.5, 3, 2, 1e5)

% chance de sair pelo menos 6 caras em 15 lancamentos
% e a chance de sair 6, mais a chance de sair 7 mais...
% até a chance de sair 15
sum = 0.0;
for i = (6:15)
    [temp] = lancamentoMoeda(0.5, i, 15, 1e5);
    sum = sum + temp;
end
sum

%estimar as probabilidades para todo o espaco de amostragem (0:nLan)
% sair 0 caras, 1 cara etc
nLan = 20;
[r1] = lancamentoMoeda(0.5, nLan, (0:nLan), 1e4)
nLan = 40;
[r2] = lancamentoMoeda(0.5, nLan, (0:nLan), 1e4)
nLan = 100;
[r3] = lancamentoMoeda(0.5, nLan, (0:nLan), 1e4)

nLAn = 3; %probabbilidade de sair até 2 caras em 3 lançamentos
[result] = lancamentoMoeda(0.5, 3, [0, 1, 2] , 1e4)