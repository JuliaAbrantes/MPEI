%1. Crie uma func¸ao para gerar chaves constitu ˜ ´ıdas por caracteres. O comprimento (i.e., o numero de ca- ´
%racteres) de cada chave deve ser escolhido aleatoriamente (distribuic¸ao uniforme) entre ˜ imin e imax. A
%func¸ao deve ter como par ˜ ametros de entrada o n ˆ umero ´ N de chaves a gerar, os valores de imin e imax, um
%vector com os caracteres a usar nas chaves e um vector com as probabilidades de cada um dos caracteres
%a utilizar. Se a func¸ao for chamada sem o ˜ ultimo par ´ ametro, deve considerar os caracteres equiprov ˆ aveis ´
%(ver a documentac¸ao da func¸ ˜ ao˜ nargin).
%A func¸ao deve devolver um "cell array”com o conjunto de chaves geradas garantindo que as chaves s ˜ ao˜
%todas diferentes.
function keys = generate_keys(N, iMin, iMax, characters, probabilities)

    if(nargin == 4)
        probabilities = zeros(1,length(characters)) + 1/length(characters);
    end

    keys = cell(N, 1);
    for n = 1:N
        s = randi(iMax-iMin) + iMin;
        var = '';
        for i = 1:s
            var(i) = discrete_rnd(characters, probabilities);
        end
        keys{n, 1} = var;
    end
end

function state = discrete_rnd(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector));
    state= states(i);
end


