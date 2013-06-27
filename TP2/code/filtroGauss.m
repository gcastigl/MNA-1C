function H = filtroGauss(N, potencia)
	H = zeros(N,N);
	for k = 1:N
		for l = 1:N
			H(k,l) = exp(-potencia*(k**2 + l**2));
		endfor
	endfor

endfunction
