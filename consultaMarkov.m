n = 6; %numero de estados
T = [0, 1/2, 1/2,  0, 1/4, 0;
     1,   0,   0,  0, 1/4, 0;
     0,   0,   0,  1, 1/4, 0;
     0,   0, 1/2,  0, 1/4, 1;
     0,   0,   0,  0,   0, 0;
     0, 1/2,   0,  0,   0, 0];

%% metodo 1
M=[T-eye(n);
   ones(1, n)]
x = zeros(n+1, 1);
x(end) = 1
steady1 = M\x

%% metodo 2
aux= (T-eye(length(T)))
N= [aux(1:end-1,:); 
    ones(1, n)]
y = zeros(n, 1);
y(end) = 1
steady2 = inv(N)*y

%%
% Q, F e tempo até absorção
estados=[1 2 3 4];
% matriz T
Tcan=zeros(4);
Tcan(1,1)=0.8; Tcan(2,1)=0.2;
Tcan(2,2)=0.9; Tcan(3,2)=0.1;
Tcan(1,3)=0.3; Tcan(2,3)=0.2; Tcan(3,3)=0.4; Tcan(4,3)=0.1;
Tcan(4,4)=1;

% Q
Q=Tcan(1:3,1:3)
% F
aux= eye(size(Q)) - Q
F=inv(aux)
%tempo até absorção:
t = F' * ones(3,1)
% ou
sum(F)
%%
% google
n = 6;
H = [0,  0, 0, 0,1/3, 0;
     1,  0, 0, 0,1/3, 0;
     0,1/2, 0, 1,  0, 0;
     0,1/2, 1, 0,  0, 0;
     0,  0, 0, 0,  0, 0;
     0,  0, 0, 0,1/3, 0;];
%no dead ends
H(:, sum(H,1) == 0) = 1/n
%no spider traps
b = 0.8;
H = b.*H  +  (1-b)+(zeros(1,n).*1/n);
H = H./sum(H,1) %normalizar
checksum = all(sum(H))


