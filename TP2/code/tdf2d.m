function transform = tdf2d(matrix)
	N = rows(matrix);
	transform = zeros(N,N);
	aux = -i * 2 * pi / N;
	for l = 1 : N
		for k = 1 : N
			for n = 1 : N
				for m = 1 : N
					c = e ** (aux * ((n-1) * (l-1) + (m-1) * (k-1)));
					transform(l, k) += matrix(n, m) * c;
			    endfor
		    endfor
		endfor
	endfor
endfunction


