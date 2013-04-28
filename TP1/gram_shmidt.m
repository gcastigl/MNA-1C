function Q = gram_shmidt(A)
	Q = [];
	for i = 1 : length(A(1,:))
		vi = A(:, i);
		qi = vi;
		if (length(Q) != 0)
			for j = 1 : length(Q(1,:))
				qi -= dot(vi, Q(:, j)) .* Q(:, j);
			end;
		endif
		Q(:, i) = qi / norm(qi, 2);
	end;
endfunction
