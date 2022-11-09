%5. Considere que o tempo em cada dia e genericamente classificado num de 3 estados – sol, nuvens e chuva ´
%– e que o tempo num determinado dia apenas depende do tempo no dia anterior. Assuma que estamos
%no primeiro dia de janeiro e que as probabilidades de transic¸ao de estados s ˜ ao as da tabela seguinte.
%(a) Defina, em Matlab, a correspondente matriz de transic¸ao.
T = [.7 , .2, .3 ; .2, .3, .3; .1, .5, .4];
%(b) Qual a probabilidade de estar sol no segundo dia e no terceiro dia de janeiro quando o primeiro dia
%e de sol?
x1 = [1, 0, 0]';
x2 = (T * x1);
x3 = (T^2 * x1);

sol2 = x2(1)
sol3 = x3(1)

%(c) Qual a probabilidade de nao chover nem no segundo dia nem no terceiro dia de janeiro quando o ˜
%primeiro dia e de sol?
naochuva2 = x2(1) + x2(2)
naochuva3 = x3(1) + x3(2)

%(d) Assumindo que o primeiro dia e de sol, determine o n ´ umero m ´ edio de dias de sol, de nuvens e de ´
%chuva que se espera ter em todo o mes de janeiro.
x = zeros(3, 31);
x(:, 1) = [1; 0; 0];
for i = (2:31)
    x(:, i) = T * x(:, i-1);
end
somasol = sum(x, 2);
fprintf('primeiro dia de sol\n');
fprintf('numero medio de dias de sol = %f\n', somasol(1));
fprintf('numero medio de dias de nuvem = %f\n', somasol(2));
fprintf('numero medio de dias de chuva = %f\n', somasol(3));

%(e) Assumindo que o primeiro dia e de chuva, determine o n ´ umero m ´ edio de dias de sol, de nuvens e ´
%de chuva que se espera ter em todo o mes de janeiro. Compare estes resultados com os da al ˆ ´ınea
%anterior. O que conclui?
x = zeros(3, 31);
x(:, 1) = [0; 0; 1];
for i = (2:31)
    x(:, i) = T * x(:, i-1);
end
somachuva = sum(x, 2);
fprintf('primeiro dia de chuva\n');
fprintf('numero medio de dias de sol = %f\n', somachuva(1));
fprintf('numero medio de dias de nuvem = %f\n', somachuva(2));
fprintf('numero medio de dias de chuva = %f\n', somachuva(3));

%(f) Considere uma pessoa com reumatismo cronico que tem dores reum ´ aticas com probabilidades de ´
%10%, 30% e 50% quando os dias sao de sol, de nuvens ou de chuva, respetivamente. Qual o n ˜ umero ´
%esperado de dias que a pessoa vai sofrer de dores reumaticas em janeiro quando o primeiro dia ´ e de ´
%sol? E quando o primeiro dia e de chuva? 
p = [.1 ; .3; .5];
fprintf('primeiro dia de sol\n');
fprintf('numero medio de dias de dor = %f\n', somasol .* p);
fprintf('primeiro dia de chuva\n');
fprintf('numero medio de dias de dor = %f\n', somachuva .* p);
