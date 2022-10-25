%3. Considere um array de tamanho T que serve de base a implementac¸ ` ao de uma mem ˜ oria associativa (por ´
%exemplo em Java). Assuma que a func¸ao de ˜ hash devolve um valor entre 0 e T − 1 com todos os valores
%igualmente provaveis
%(c) Para um numero de ´ keys igual a 50, represente graficamente a variac¸ao da probabilidade (esti- ˜
%mada por simulac¸ao) de n ˜ ao haver nenhuma colis ˜ ao em func¸ ˜ ao do tamanho ˜ T do array (assuma os
%tamanhos T de 100 ate 1000 com incrementos de 100).

TamArr = (100:100:1000);
Nexp = 1e5;
nKeys = 50;
probSim = zeros(1,length(TamArr));

j = 1;
for t = TamArr
    success = 0;
    exp = randi(t, nKeys, Nexp)-1;
    for i=(1:Nexp)
        if(length(unique(exp(:,i))) == nKeys)
            success = success+1;
        end
    end
    probSim(j) = 1-(success/Nexp);
    j = j+1;
end
probSim
figure
plot(TamArr,probSim, " sb")