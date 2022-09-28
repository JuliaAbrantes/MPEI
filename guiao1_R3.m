% R3 Um teste tem n perguntas com respostas poss´ıveis Verdadeiro ou Falso. Fornec¸a uma expressao para
% calcular o numero de maneiras diferentes de responder ao teste. Qual a probabilidade de acertar todas as
% respostas, escolhendo-as a sorte com igual probabilidade?
% simulacao
n = 3;
nExp = 1e4;
teste = rand(n, nExp) > 0.5; % 0 é errar e 1 é acertar, sendo as linhas as perguntas
nota = sum(teste,1);
nCertas = sum(nota == n); % queremos o numero de provas totalmente certas
resposta = nCertas/nExp
%analise combinatoria
maneiras = 2^n
probabilidade = 1/maneiras