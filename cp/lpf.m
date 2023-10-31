clear

N = 101;
Fs = 3000;
 for n=0:1:N-1
   hD(n+1) = sin(0.48*pi*(n-50))/(pi*(n-50));
   wd(n+1) = 0.5 - 0.5*cos((2*pi*n)/(N-1));
 endfor

 hD(51) = 0.48;
plot(hD);

figure(2);plot(wd)

h = hD .* wd;     %%element by element multiplication and not matrix multilpication

figure(3);plot(h)

figure(4);
freqz(h,1,N,Fs)

