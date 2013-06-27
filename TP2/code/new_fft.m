function y = new_fft(x,inverse)
n = length(x);
if(mod(n,2) != 0)
	y = new_ft(x,inverse);
else
	m = n/2;
	y_odd = new_fft(x(1:2:n),inverse);
	y_even = new_fft(x(2:2:n),inverse);
	
	if(inverse)
		d = exp(2 * pi * i / n) .^ (0:m-1);
	else
		d = exp(-2 * pi * i / n) .^ (0:m-1);
	endif
	
	z = d .* y_even;
	y = [ y_odd + z , y_odd - z ];
end
