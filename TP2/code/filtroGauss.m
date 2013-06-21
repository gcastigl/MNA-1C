function H = filtroGauss(N)
	H = zeros(N,N);
	for k = 1:N
		for l = 1:N
			H(k,l) = exp(-0.1 * (k**2 + l**2));
		endfor
	endfor

endfunction
