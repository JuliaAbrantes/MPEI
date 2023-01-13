%1. Relativamente ao problema 6 da secc¸ao anterior: ˜
%(a) Confirme os valores calculados nas al´ıneas (f) e (g) atraves de simulac¸ ´ ao (fac¸a a m ˜ edia de v ´ arias ´
%simulac¸oes). Use o c ˜ odigo Matlab na ´ ultima p ´ agina como base para criar a suas simulac¸ ´ oes. 

T = [.8  0 .3  0  0 ;
     .2 .6 .2  0  0 ;
      0 .1 .4  0  0 ;
      0 .3  0  1  0 ;
      0  0 .1  0  1];
%%
N = 1e5;
soma = zeros(1,5);
l = 1:1:5;
for i = 1:N
    for j = 1:1:5
        soma(j)=soma(j)+length(crawl(T, j, [4,5]));
    end
end
disp(l)
disp((soma./N)-1)

%%
%(b) Guarde numa variavel do tipo cell array do Matlab 10000 sequ ´ encias que comec¸am num dos estados ˆ
%nao absorventes (escolhido com igual probabilidade). Calcule os comprimentos m ˜ ´ınimo e maximo ´
%das sequencias geradas
N = 1e4;
passeios = cell(1, N);
fim = zeros(1,2);
for i = 1:N
    passeios(1, i) = {crawl(T, randi(3), [4, 5])};
end

for i = 1:N
    fim(passeios{1,i}(end)-3) = fim(passeios{1,i}(end)-3) + 1;
end
disp("prob. de absorção do estado 3")
disp(fim(1)/N) %0.8962
disp("prob. de absorção do estado 5")
disp(fim(2)/N) %0.1038

soma = 0;
for i = 1:N
    soma = soma + length(passeios{1,i});
end
disp("tamanho médio do passeio")
disp(soma/N)

%%
% Random walk on the Markov chain
% Inputs:
% H - state transition matrix
% first - initial state
% last - terminal or absorving state
function [state] = crawl(H, first, last)
% the sequence of states will be saved in the vector "state"
% initially, the vector contains only the initial state:
state = [first];
% keep moving from state to state until state "last" is reached:
    while (1)
        state(end+1) = nextState(H, state(end));
        if ismember(state(end), last) % verifies if state(end) is absorbing
            break;
        end
    end
end

% Returning the next state
% Inputs:
% H - state transition matrix
% currentState - current state
function state = nextState(H, currentState)
    % find the probabilities of reaching all states starting at the current one:
    probVector = H(:,currentState)'; % probVector is a row vector
    n = length(probVector); %n is the number of states
    % generate the next state randomly according to probabilities probVector:
    state = discrete_rnd(1:n, probVector);
end

% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector
function state = discrete_rnd(states, probVector)
    U=rand();
    i = 1 + sum(U > cumsum(probVector));
    state = states(i);
end