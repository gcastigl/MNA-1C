function y = new_ft(x,inverse)
n = length(x);

if(inverse)
	d = exp(2 * pi * i / n) .^ (0:n-1);
else
	d = exp(-2 * pi * i / n) .^ (0:n-1);
endif

for k = (1:n)
	y(k) = sum(x .* (d.^(k-1)));
endfor
