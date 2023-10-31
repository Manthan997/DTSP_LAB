clc, clear, clf

F1 = 100
F2 = 200
F3 = 300
F4 = 400
F5 = 500
F6 = 600
F7 = 700
F8 = 800
Fs = 1000

for n=1:1:50
  x1(n) = 10 * cos(2*pi*F1*n/Fs);
  x2(n) = 10 * cos(2*pi*F2*n/Fs);
  x3(n) = 10 * cos(2*pi*F3*n/Fs);
  x4(n) = 10 * cos(2*pi*F4*n/Fs);
  x5(n) = 10 * cos(2*pi*F5*n/Fs);
  x6(n) = 10 * cos(2*pi*F6*n/Fs);
  x7(n) = 10 * cos(2*pi*F7*n/Fs);
  x8(n) = 10 * cos(2*pi*F8*n/Fs);
end

subplot(4,2,1);plot(x1)

subplot(4,2,2);plot(x2)

subplot(4,2,3);plot(x3)

subplot(4,2,4);plot(x4)

subplot(4,2,5);plot(x5)

subplot(4,2,6);plot(x6)

subplot(4,2,7);plot(x7)

subplot(4,2,8);plot(x8)

