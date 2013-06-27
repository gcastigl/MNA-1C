function z = new_fft2(x,inverse)

n = size(x,2);

for u = 1:n
	y(:,u) = new_fft(x(:,u)',inverse)';
endfor

if(inverse)
	y = y ./n;
endif

y = y';

n = size(y,2);

for v = 1:n
	z(:,v) = new_fft(y(:,v)',inverse)';
endfor

if(inverse)
	z = z ./n;
endif

z = z';
