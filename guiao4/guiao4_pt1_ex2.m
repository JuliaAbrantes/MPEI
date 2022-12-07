
%2. Considere a func¸ao Matlab ˜ string2hash()1 que implementa duas func¸oes de dispers ˜ ao diferentes. ˜
%Considere ainda 2 func¸oes Matlab fornecidas que s ˜ ao adaptac¸ ˜ oes para Matlab das func¸ ˜ oes de dispers ˜ ao˜
%hashstring()2 e DJB31MA()3.
%Utilizando separadamente cada uma destas quatro func¸oes de dispers ˜ ao, simule a inserc¸ ˜ ao das chaves ˜
%criadas no exerc´ıcio 1a) em 3 Chaining Hash Tables, uma de tamanho 5 × 105, outra de tamanho 106
%e a terceira de tamanho 2 × 106 . Para cada uma das simulac¸oes (4 func¸ ˜ oes de dispers ˜ ao˜ × 3 tamanhos):
charsmin = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
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

keys = generate_keys(20, 6, 20, charsmin, probs) ;

N = [5*1e5 , 1e6, 2*1e6];
N = [5, 10, 20];
funcNames = ["djb2", "sdbm", "DJB31MA", "hashstring"];
hashfuncs = cell(4,3);

%(a) Guarde um vetor com os hashcodes obtidos.
for col = 1:length(N)
    for line = 1:length(funcNames)
        hashfuncs{line,col} = aplyToKeys(keys, funcNames(line), N(col));
        disp(hashfuncs{line,col})
    end
end