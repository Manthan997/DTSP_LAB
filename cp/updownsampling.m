% up down sampling is alternate and doublereading
clear

x = [1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6];
N = length(x);

for n=1:1:(N-1)/2
  ds(n) = x(2*n);
end

M= length(ds);
for m=1:1:M
  us(2*m)=ds(m);
end

for m=1:1:M-1
  us((2*m)+1)= (us(2*m)+us((2*m)+2))/2;
end

subplot(3,1,1);stem(x) ;
subplot(3,1,2);stem(ds) ;
subplot(3,1,3);stem(us) ;


