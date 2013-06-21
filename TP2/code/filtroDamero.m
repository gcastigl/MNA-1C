function H = filtroDamero(N)
	H = zeros(N,N);
	for k = 1:N
		for l = 1:N
			if(mod(l+k,2)!=0)
				H(k,l) = 1;
			endif
		endfor
	endfor

endfunction
