function [probSimulacao] = pecaDefeituosa(probEvento, numAmostras, evento, numExperiencias)
    amostras = rand(numAmostras,numExperiencias) < probEvento;
    result = sum(amostras) == evento;
    probSimulacao = sum(result)/numExperiencias;
end