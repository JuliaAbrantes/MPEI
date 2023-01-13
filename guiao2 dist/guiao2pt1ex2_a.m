%2. Considere o seguinte "jogo”: lanc¸amento com os olhos vendados de n dardos, um de cada vez, para m
%alvos, garantindo-se que cada dardo atinge sempre um alvo (e apenas 1).
%(a) Estime por simulac¸ao a probabilidade de nenhum alvo ter sido atingido mais do que uma vez ˜
%quando n = 20 dardos e m = 100 alvos.

N = 1e5; %numero de experiencias (cada coluna é uam experiencia)
dardos = 20; %n
alvos = 100; %m
experiencias = randi(alvos, dardos, N); %gera n valores de 1 a m
%sucesso: quando não há alvos repetidos nas 20 linhas
num = 0;
for i = (1:N)
    if(dardos == length(unique(experiencias(:,i))))
        num = num+1;
    end
end
probSim = num/N %probabilidade por simulação


