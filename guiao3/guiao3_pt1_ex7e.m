%7. Considere o conjunto de paginas Web e respetivas hyperligac¸ ´ oes entre si dado pelo diagrama seguinte: ˜
%(e) Calcule agora o pagerank de cada pagina considerando um n ´ umero m ´ ´ınimo de iterac¸oes que garanta ˜
%que nenhum valor muda mais do que 10−4 em 2 iterac¸oes consecutivas. Quantos iterac¸ ˜ oes s ˜ ao˜
%necessarias? Compare os valores de pagerank obtidos com os da al ´ ´ınea anterior. O que conclui?
n = 6;
H = [0,  0, 0, 0,1/3, 0;
     1,  0, 0, 0,1/3, 0;
     0,1/2, 0, 1,  0, 0;
     0,1/2, 1, 0,  0, 0;
     0,  0, 0, 0,  0, 0;
     0,  0, 0, 0,1/3, 0;];
%no dead ends
H(:, sum(H,1) == 0) = 1/n
%no spider traps
b = 0.8;
H = b.*H  +  (1-b)+(zeros(n,1).*1/n);
H = H./sum(H,1); %normalizar
%estado inicial
r1 = zeros(n,n)+(1/n);
u1 = H*r1;
for i = 2:20
    u1 = H*u1;
    u2 = H*u1;
    if (all((u2-u1)<=10^(-4), "all"))
        break
    end
end
disp("numero de iteracoes:")
disp(i)
disp("page rank final:")
%page rank mais apropriado
disp(sum(u1, 2))