%dft
clear;
x= input('enter input signal as: [a, b, c, ....]')
N = length(x)

%for n lengthed input we need to make a w matrix
for n=0:1:N-1
  for k=0:1:N-1
    w(n+1, k+1)=exp(-j*2*pi*n*k/N);
  endfor
endfor

w
