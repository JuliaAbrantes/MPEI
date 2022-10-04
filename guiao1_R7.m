% R7 Um conjunto de 50 pec¸as contem 8 pec¸as defeituosas. Escolhem-se aleatoriamente 10 pec¸as. Qual a ´
% probabilidade de encontrar 3 defeituosas?

% simulaçao
pecasDef = 8;
pecasTotal = 50;
probEvento = pecasDef / pecasTotal;
nExp = 1e4;
evento = 3;
npecasRetiradas = 10;
experiencia = rand(npecasRetiradas,nExp) < probEvento;
sucessos = sum(experiencia) == evento;
total = sum(sucessos) / nExp

% analiticamente

%prob da 1º def e da 2º def e da 3º def
result = (pecasDef/pecasTotal) * ((pecasDef-1)/(pecasTotal-1)) * ((pecasDef-2)/(pecasTotal-2));
%e das restantes não def
for i = (evento:npecasRetiradas) %(3:10)
    result = result * ((pecasTotal-pecasDef-i)/pecasTotal-i);
end
%retirar as possíveis permutações de posição
result = result / (factorial(evento) * factorial(npecasRetiradas-evento))