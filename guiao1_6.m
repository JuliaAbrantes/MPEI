%Considere um processo de produc¸ao fabril que produz torneiras em que a probabilidade de cada torneira ˜
%ser produzida com defeito e de 30%. No processo de controlo de qualidade, ´ e selecionada uma amostra ´
%de 5 pec¸as.
%(a) Calcule analiticamente e por simulac¸ao a probabilidade de 3 pec¸as da amostra serem defeituosas. ˜
a_sim = pecaDefeituosa(0.3, 5, 3, 1e4)
a_ana = analise(0.3, 3, 5)
%(b) Calcule analiticamente e por simulac¸ao a probabilidade de, no m ˜ aximo, 2 das pec¸as da amostra serem ´ defeituosas.
b_sim = pecaDefeituosa(0.3, 5, 0, 1e4) + pecaDefeituosa(0.3, 5, 1, 1e4) + pecaDefeituosa(0.3, 5, 2, 1e4)
b_ana = analise(0.3, 0, 5) + analise(0.3, 1, 5) + analise(0.3, 2, 5)
%(c) Baseado em simulação, construa no Matlab o histograma representativo da distribuição de probabilidades do numero de peças defeituosas da amostra. 
amostras = (rand(5, 1e4) < 0.3); %matriz binária com 5 linhas, representando as amostras, e 1e4 colunas, representando as experiencias
numPecasDef = sum(amostras); %soma coluna a coluna, ou seja, numero de peças defeituosas na amostra
histogram(numPecasDef)
