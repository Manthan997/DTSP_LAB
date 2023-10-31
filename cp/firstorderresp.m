R1 = 1000000;
C = 9 * 10^-6;

for n=0:1:50
  x1(n+1) = 1-exp(-n/(R1*C));
end

plot(x1);
