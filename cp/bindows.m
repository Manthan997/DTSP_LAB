clear
%%bindows
N = 31;

for n=1:1:N-1
  rect(n) = 1;
  hann(n) = 0.5 - 0.5*cos((2*pi*n)/(N-1));
  hamm(n) = 0.54 - 0.46*cos((2*pi*n)/(N-1));
  black(n) = 0.42 - 0.5*cos((2*pi*n)/(N-1)) + 0.08*cos((4*pi*n)/(N-1));
endfor

plot(rect)
hold on
plot(hann)
hold on
plot(hamm)
hold on
plot(black)
hold on

