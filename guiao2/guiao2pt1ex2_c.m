%2. Considere o seguinte "jogo”: lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1).
%(b) Estime por simulac¸ao a probabilidade de pelo menos 1 alvo ter sido atingido 2 ou mais vezes ˜
%quando n = 20 dardos e m = 100 alvos.

N = 1e6; %numero de experiencias (cada coluna é uam experiencia)
dardos = (10:10:100);  %10 a 100 de 10 em 10

alvos = 1e3; %testar com 1e2 & 1e5
%sucesso: quando há 2 ou mais alvos repetidos nas 20 linhas
probSim1 = zeros(1,10);
for d = dardos
    experiencias = randi(alvos, d, N); %gera n valores de 1 a m
    num = 0;
    for i = (1:N) %verifica-se a cada experiencia, quantos foram repetidos
        if(length(unique(experiencias(:,i))) <= d-1)
            num = num+1;
        end
    end
    num
    probSim1(d/10) = num/N; %probabilidade por simulação
end
probSim1
figure
plot(dardos,probSim1, "-or")

alvos = 1e5; %testar com 1e2 & 1e5
%sucesso: quando há 2 ou mais alvos repetidos nas 20 linhas
probSim2 = zeros(1,10);
for d = dardos
    experiencias = randi(alvos, d, N); %gera n valores de 1 a m
    num = 0;
    for i = (1:N) %verifica-se a cada experiencia, quantos foram repetidos
        if(length(unique(experiencias(:,i))) <= d-1)
            num = num+1;
        end
    end
    num
    probSim2(d/10) = num/N; %probabilidade por simulação
end
probSim2
plot(dardos,probSim2, "-sb")
plot(dardos,probSim1, "-or", dardos,probSim2, "-sb")
