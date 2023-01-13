
%2. Considere a func¸ao Matlab ˜ string2hash()1 que implementa duas func¸oes de dispers ˜ ao diferentes. ˜
%Considere ainda 2 func¸oes Matlab fornecidas que s ˜ ao adaptac¸ ˜ oes para Matlab das func¸ ˜ oes de dispers ˜ ao˜
%hashstring()2 e DJB31MA()3.
%Utilizando separadamente cada uma destas quatro func¸oes de dispers ˜ ao, simule a inserc¸ ˜ ao das chaves ˜
%criadas no exerc´ıcio 1a) em 3 Chaining Hash Tables, uma de tamanho 5 × 105, outra de tamanho 106
%e a terceira de tamanho 2 × 106 . Para cada uma das simulac¸oes (4 func¸ ˜ oes de dispers ˜ ao˜ × 3 tamanhos):

%(a) Guarde um vetor com os hashcodes obtidos.
%(b) Registe o numero de atribuic¸ ´ oes a cada uma das posic¸ ˜ oes de cada ˜ Hash Table
%(c) Calcule o numero de colis ´ oes (em cada ˜ Hash Table e para cada func¸ao de dispers ˜ ao).
%(d) O tempo de execuc¸ao da simulac¸ ˜ ao. 


%charsmin = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
charsmin = 'a':'z';
probs = [  1.4620000e-01;
           1.0400000e-02;
           3.8800000e-02;
           4.9900000e-02;
           1.2570000e-01;
           1.0200000e-02;
           1.3000000e-02;
           1.2800000e-02;
           6.1800000e-02;
           4.0000000e-03;
           2.0000000e-04;
           2.7800000e-02;
           4.7400000e-02;
           5.0500000e-02;
           1.0730000e-01;
           2.5200000e-02;
           1.2000000e-02;
           6.5300000e-02;
           7.8100000e-02;
           4.3400000e-02;
           4.6300000e-02;
           1.6700000e-02;
           1.0000000e-04;
           2.1000000e-03;
           1.0000000e-04;
           4.7000000e-03];

%keys = generate_keys(5*1e5 , 6, 20, charsmin, probs);
keys = generate_keys(200 , 6, 20, charsmin, probs);

%N = [5*1e5 , 1e6, 2*1e6];
N = [5, 10, 20];
funcNames = ["djb2", "sdbm", "DJB31MA", "hashstring"];
hashfuncs = cell(4,3);
atribuicoes = cell(4,3);
colisoes = cell(4,3);
%%
tic
for col = 1:length(N)
    for line = 1:length(funcNames)
        hashfuncs{line,col} = aplyToKeys(keys, funcNames(line), N(col));
        atribuicoes{line, col} = zeros(1, N(col)+1);
        for n = hashfuncs{line,col}
            atribuicoes{line, col}(n+1) = atribuicoes{line, col}(n+1) +1;
        end
        %disp(atribuicoes{line, col})
        colisoes{line, col} = atribuicoes{line, col} -1;
        colisoes{line, col}(colisoes{line, col} == -1) = 0;
    end
end
toc
disp(colisoes)
%%
%3. Utilizando a informac¸ao obtida no exerc ˜ ´ıcio anterior, compare o desempenho das quatro func¸oes de ˜
%dispersao para cada tamanho diferente da ˜ Hash Table, relativamente a:
%(a) Uniformidade, de duas formas diferentes:
%i. visualize os histogramas dos hascodes com 100 intervalos e verifique se os valores nos diferentes intervalos sao similares;
%ii. calcule os momentos de ordem 2, 5 e 10 das variaveis aleat ´ orias correspondentes aos valores ´
%dos hashcodes divididos pelo comprimento da Hash Table (i.e, variavel aleat ´ oria toma valores ´
%entre 0 e 1) e compare com os valores teoricos da distribuic¸ ´ ao uniforme. ˜
% Na distribuic¸ao uniforme entre 0 e 1, o valor do momento de ordem ˜ n e igual a 1/(n+1) .
var = zeros(4,3);
for col = 1:length(N)
    for line = 1:length(funcNames)
        %figure
        %histogram(hashfuncs{line,col}, 100)
        var(line, col) = sum(hashfuncs{line, col}./N(col));
    end
end
var./
uniformidade = zeros(1,3);
uniformidade(1) = 1/(2+1);
uniformidade(2) = 1/(5+1);
uniformidade(3) = 1/(10+1);