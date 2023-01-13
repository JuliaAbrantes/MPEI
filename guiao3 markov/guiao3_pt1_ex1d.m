%1. Considere a seguinte situac¸ao e responda ˜ as al ` ´ıneas abaixo:
%Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas 2 aulas Teorico-Pr ´ aticas de ´
%uma Unidade Curricular X as 9:00, ` as quartas e sextas. `
%Todos os dias que tem aulas desta UC, o aluno decide se vai a aula ou n ` ao da seguinte forma: Se tiver ˜
%estado presente na aula anterior a probabilidade de ir a aula ` e 70%; se faltou ´ a anterior, a probabilidade `
%de ir e 80%. ´
%(d) Represente num grafico a probabilidade de faltar a cada uma das 30 aulas, assumindo que a proba- ´
%bilidade de estar presente na primeira aula e de 85%. 
%estar presente = 1 | não estar = 2
T = [0.7 0.8 ; 0.3 0.2];
x0 = [0.85; 0];
t = T;
val = zeros(1, 30);
y = (1:30);
for i = y
    temp = t * x0;
    val(i) = temp(2);
    t = t*t;
end
plot(y, val)
val