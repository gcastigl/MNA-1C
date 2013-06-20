function transform = tdf2dInv(matrix)
	N = rows(matrix);
	transform = [];
	aux = i * 2 * pi / N;
	for n = 1 : N
		for m = 1 : N	
			transform(n, m) = 0;
			for l = 1 : N
				for k = 1 : N
					c = e ** (aux * (n * l + m * k));
					transform(n, m) += matrix(l, k) * c;
			    endfor
			endfor
	    endfor
	endfor
	transform /= (N * N);
endfunction
