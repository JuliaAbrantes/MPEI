%2. Considere o seguinte "jogo”: lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1).
%(d) Considere o valor de n = 100 dardos. Fac¸a as simulac¸oes necess ˜ arias para desenhar um gr ´ afico ´
%da probabilidade da al´ınea (b) em func¸ao dos valores de ˜ m = 200, 500, 1000, 2000, 5000, 10000,
%20000, 50000 e 100000 alvos. O que conclui dos resultados obtidos?

N = 1e6; %numero de experiencias (cada coluna é uma experiencia)
dardos = 100;  %n = 100 dardos
alvos = [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000];
%sucesso: quando há 2 ou mais alvos repetidos nas 20 linhas
probSim = zeros(1,length(alvos))
j=1
for a = alvos
    experiencias = randi(a, dardos, N); %gera n valores de 1 a m
    num = 0;
    for i = (1:N) %verifica-se a cada experiencia, quantos foram repetidos
        if(length(unique(experiencias(:,i))) <= dardos-1)
            num = num+1;
        end
    end
    num
    probSim(j) = num/N %probabilidade por simulação
    j=j+1;
end
probSim;
figure
plot(alvos,probSim, " or")
