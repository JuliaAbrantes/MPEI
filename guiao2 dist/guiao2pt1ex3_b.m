%3. Considere um array de tamanho T que serve de base a implementac¸ ` ao de uma mem ˜ oria associativa (por ´
%exemplo em Java). Assuma que a func¸ao de ˜ hash devolve um valor entre 0 e T − 1 com todos os valores
%igualmente provaveis
%(a) Determine por simulac¸ao a probabilidade de haver pelo menos uma colis ˜ ao (pelo menos 2 ˜ keys
%mapeadas pela func¸ao de ˜ hash para a mesma posic¸ao do array) se forem introduzidas 10 ˜ keys num
%array de tamanho T = 1000.

TamArr = 1000;
Nexp = 1e5;
nKeys = [5, 10, 20, 50, 100, 500];
probSim = zeros(1,length(nKeys));

j = 1;
for k = nKeys
    success = 0;
    exp = randi(TamArr, k, Nexp)-1;
    for i=(1:Nexp)
        if(length(unique(exp(:,i))) == k)
            success = success+1;
        end
    end
    probSim(j) = 1-(success/Nexp);
    j = j+1;
end
probSim
figure
plot(nKeys,probSim, " sb")


