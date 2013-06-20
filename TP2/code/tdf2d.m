function transform = tdf2d(matrix)
	N = rows(matrix);
	transform = [];
	for l = 1 : N
		for k = 1 : N
			transform(l, k) = 0;
			for n = 1 : N
				for m = 1 : N
					c = e ** (i * 2 * pi * (n * l + m * k) / N);
					transform(l, k) += matrix(n, m) * c;
			    endfor
		    endfor
		endfor
	endfor
endfunction
