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