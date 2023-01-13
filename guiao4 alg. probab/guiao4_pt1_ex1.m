%(a) Gere um conjunto de N = 105
%chaves usando todas as letras maiusculas e min ´ usculas (%A’ a ’Z’ e ´
%a’ a ’z’) com igual probabilidade e em que imin = 6 e imax = 20.
charsmin = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
charsmais = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
chars = cat(1, charsmin, charsmais);
disp(generate_keys(1e5, 6, 20, chars))

%% 
%(b) Gere um conjunto de N = 105
%chaves usando todas as letras minusculas (%a’ a ’z’) com as probabi- ´
%lidades contidas no ficheiro prob_pt.txt e que correspondem as frequ ` encias das letras em Por- ˆ
%tugues ( ˆ https://pt.wikipedia.org/wiki/Frequ%C3%AAncia_de_letras). Considere novamente imin = 6 e imax = 20.
   probs = [   1.4620000e-01;
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

disp(generate_keys(1e5, 6, 20, charsmin, probs))
