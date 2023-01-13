%2. Considere sequencias de d ˆ ´ıgitos ´ımpares de 1 a 9 com as seguintes propriedades:
%(a) Complete o diagrama de estados abaixo (incompleto!...) relativo a cadeia de Markov correspon- `
%dente indicando todos os estados e transic¸oes poss ˜ ´ıveis segundo o enunciado. Crie em Matlab a
%matriz de transic¸ao de estados ( ˜ T) correspondente.
%index: estado
%[1]=9a
%[2]=1
%[3]=3a
%[4]=5
%[5]=3b
%[6]=9b
%[7]=fim

T = [  0,  0,  0,  0,  0,  0,  0;
      .5,  0,  0,  0,  0,  0,  0;
      .5,  0,  0,  0,  0,  0,  0;
       0,1/3, .6, .3, .5, .3,  0;
       0,1/3,  0, .2, .2,  0,  0;
       0,1/3, .4, .3,  0, .3,  0;
       0,  0,  0, .2, .3, .4,  0]
%%
%(b) Qual a probabilidade de uma sequencia de ˆ 7 d´ıgitos iniciada por 91 e terminada em 9 ?
p9a_1 = T(2,1);
p1_9b = T^4 * [1,0,0,0,0,0,0]';
p9b_Fim = T(7,6);
disp("prob. sequencia de 7 iniciado por 91 e terminada em 9")
disp(p9a_1*p1_9b(6)*p9b_Fim)
%%
%(c) Qual a probabilidade de sequencias de 7 d ˆ ´ıgitos iniciadas por 91 ?
p9a_1 = T(2,1);
p1_Fim = T^5 * [1,0,0,0,0,0,0]';
disp("prob. sequencia de 7 iniciado por 91")
disp(p9a_1*p1_9b(7))

