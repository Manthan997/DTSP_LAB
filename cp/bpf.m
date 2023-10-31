%%independent bpf

N = 501; %%order of the filter
Nhalf = 250;
%%filter cutoffs
b=0.4;
a=0.1;

for n=0:1:N-1
  Imp(n+1)= sin(b*pi*(n-Nhalf))/(pi*(n-Nhalf)) - sin(a*pi*(n-Nhalf))/(pi*(n-Nhalf));
  hann(n+1)=0.5 - 0.5*cos(2*pi*(n)/(N-1));
endfor

Imp(int64(Nhalf)+1) = b-a;

figure(1); plot(Imp)
figure(2); plot(hann)

%% multiply the answers
ans = Imp .* hann;
figure(3); plot(ans)

figure(4); freqz(ans)

