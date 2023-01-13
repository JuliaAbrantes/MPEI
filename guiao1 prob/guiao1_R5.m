% R5 Considere um baralho com 20 cartas. Dessas cartas, 10 sao vermelhas e numeradas de 1 a 10. As
% restantes 10 sao pretas e tambem numeradas de 1 a 10.
% (a) De quantas maneiras diferentes se podem dispor as 20 cartas numa fila?
% analitica
nCartas = 4;
analitica = factorial(nCartas)
% simulacao funciona para poucas cartas mas é preciso muitas experiencias
% para 20 cartas
nExp = 100;
experiencia = zeros(nCartas, nExp);
for i = (1:nExp) % percorre as colunas
    cartasRestantes = (1:nCartas);
    for j = (1:nCartas) % percorre as linhas
        carta = randi(size(cartasRestantes)); % sorteia uma posição para o array e cartas restantes
        experiencia(j,i) = cartasRestantes(carta); % coloca a carta na posição sorteada na proxima posição da matriz
        cartasRestantes(carta) = []; % remove a carta usada
    end
end
sequencias_unicas = unique(experiencia', 'row'); % separa as sequencia unicas
[simulacao,~] = size(sequencias_unicas); % ve o numero de sequencias unicas
simulacao
% (b) Calcule a probabilidade de se obter uma sequencia constitu ˆ ´ıda alternadamente por cartas pretas e vermelhas.
