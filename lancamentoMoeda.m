function [probSimulacao] = lancamentoMoeda(probCara, numLancamentos, caras, numExperiencias)
    experiencia = sum(rand(numLancamentos, numExperiencias) > probCara);
    sucessos = 0;
    for i = (1:length(caras))
        sucessos = sucessos + sum(experiencia == caras(i));
    end
    probSimulacao = sum(sucessos)/ numExperiencias;
end
%quero mudar para numCaras poder ser um array e assim retornar a soma das
%probabilidades de cada elem do array