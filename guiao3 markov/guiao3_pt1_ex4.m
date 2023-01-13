%4. Considere o seguinte diagrama representativo de uma Cadeia de Markov:
%(a) Defina, em Matlab, a matriz de transic¸ao de estados ˜ T assumindo p = 0, 4 e q = 0, 6.

p = 0.4;
q = 0.6;
T = [p^2, 0, 0, q^2;
    (1-p)^2, 0, 0, q*(1-q);
    p*(1-p), 0, 0, q*(1-q);
    p*(1-p), 1, 1, (1-q)^2]
%(b) Assuma que o sistema se encontra inicialmente no estado A. Qual a probabilidade de estar em cada
%estado ao fim de 5 transic¸oes? E de 10 transic¸ ˜ oes? E de 100 transic¸ ˜ oes? E de 200 transic¸ ˜ oes?

x0 = [1,0,0,0]';
x5 = T^5 * x0
x10 = T^10 * x0
x100 = T^100 * x0
x200 = T^200 * x0

%(c) Determine as probabilidades limite de cada estado. Compare estes valores com os obtidos na al´ınea
%anterior. O que conclui?

M = [T-eye(4) ; ones(1, 4)];
x = [0,0,0,0,1]';
u = M\x
