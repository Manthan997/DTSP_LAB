%%linear conv is same like corcular conv just appending zeros in more than just making them of equal lenghts

x1 = [1 2 3 4];
x2 = [1 2 3 4 5 6 7 ];

%%appending zeros to make lenghts = N
N = length(x1)+length(x2)-1;
x1 = [x1 zeros(1,N-length(x1))];
x2 = [x2 zeros(1,N-length(x2))];

%%making circular matrix

C = x1';
B = x1;

for a=1:1:N-1
  B = [B(N) B(1:N-1)];
  C = [C B'];
endfor

%%multiply

ans =  C * x2'
