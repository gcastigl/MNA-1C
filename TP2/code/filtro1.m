function H = filtro1(N)
	H = zeros(N,N);
	for k = 1:N
		for l = 1:N
			H(k,l) = 1;
			if(((l>190 && l<210) || (k>190 && k<210)))
				H(k,l) = 0;
			endif
		endfor
	endfor

endfunction
