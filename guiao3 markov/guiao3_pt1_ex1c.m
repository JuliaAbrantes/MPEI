%1. Considere a seguinte situac¸ao e responda ˜ as al ` ´ıneas abaixo:
%Um aluno do primeiro ano de um curso de Engenharia tem todas as semanas 2 aulas Teorico-Pr ´ aticas de ´
%uma Unidade Curricular X as 9:00, ` as quartas e sextas. `
%Todos os dias que tem aulas desta UC, o aluno decide se vai a aula ou n ` ao da seguinte forma: Se tiver ˜
%estado presente na aula anterior a probabilidade de ir a aula ` e 70%; se faltou ´ a anterior, a probabilidade `
%de ir e 80%. ´
%(c) Sabendo que esteve presente na primeira aula, qual a probabilidade de estar na ultima aula, assu- ´
%mindo que o semestre tem exactamente 15 semanas de aulas e nao existem feriados? 

t = [0.7 0.8 ; 0.3 0.2];
x0 = [1; 0];
x15 = t^15 * x0