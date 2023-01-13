%7. Suponha que o numero de mensagens que chega a um servidor de ´ email segue uma lei de Poisson com
%media de 15 (mensagens por segundo). Calcule a probabilidade de num intervalo de um segundo: ´
%(a) o servidor nao receber nenhuma mensagem;
%(b) o servidor receber mais de 10 mensagens.

lambda = 15;
x = 0;
e = 2.71828;
((lambda^x)*(e^(-lambda))) / factorial(x)

