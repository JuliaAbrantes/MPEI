%3. Considere um array de tamanho T que serve de base a implementac¸ ` ao de uma mem ˜ oria associativa (por ´
%exemplo em Java). Assuma que a func¸ao de ˜ hash devolve um valor entre 0 e T − 1 com todos os valores
%igualmente provaveis
%(b) Fac¸a um grafico da probabilidade da al ´ ´ınea (a) (estimada por simulac¸ao) em func¸ ˜ ao do n ˜ umero de ´
%keys para todos os valores relevantes num array de tamanho T = 1000.

TamArr = 1000;
Nexp = 1e5;
nKeys = 10;
exp = randi(TamArr, nKeys, Nexp)-1;
success = 0;
for i=(1:Nexp)
    if(length(unique(exp(:,i))) == nKeys)
        success = success+1;
    end
end
probSim = 1-(success/Nexp)

