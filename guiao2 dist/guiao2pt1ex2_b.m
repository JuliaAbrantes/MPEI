%2. Considere o seguinte "jogo”: lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1).
%(b) Estime por simulac¸ao a probabilidade de pelo menos 1 alvo ter sido atingido 2 ou mais vezes ˜
%quando n = 20 dardos e m = 100 alvos.

N = 1e5; %numero de experiencias (cada coluna é uam experiencia)
dardos = 20; %n
alvos = 100; %m
experiencias = randi(alvos, dardos, N); %gera n valores de 1 a m
%sucesso: quando há 2 ou mais alvos repetidos nas 20 linhas
num = 0;
for i = (1:N)
    if(length(unique(experiencias(:,i))) <= dardos-1)
        num = num+1;
    end
end
probSim = num/N %probabilidade por simulação


