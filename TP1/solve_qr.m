function x = solve_qr(A, yValues)
	Q = gram_shmidt(A);
	R = Q' * A;
	x = (R ** -1) * Q' * yValues;
endfunction
