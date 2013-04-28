function main(algorithm)
	if (!strcmp(algorithm, "qr") && !strcmp(algorithm, "normal"))
		printf("El tipo de algoritmo solo puede ser 'qr' o 'normal'\n");
		return;
	endif
	% Extract values from data file
	load data.txt;
	_dates = data(:,1);
	_y = data(:,2);
	
	% Normalize extracted data
	_dates(:,1) -= mean(data(:,1));
	_dates(:,1) /= std(data(:,1));
	_logy = log(_y);

	% Build system variables and solve
	_A = [f1(_dates) f2(_dates) f3(_dates)];
	if (strcmp(algorithm, "normal"))
		_x = solve_ec_normal(_A, _logy);
	else
		_x = solve_qr(_A, _logy);
	endif
	_logAprox = y2(_x, _dates);
	_logCuadraticError = cuadratic_error(_logy, _logAprox);
	
	_aprox = y(_x, _dates);
	_cuadraticError = cuadratic_error(_y, _aprox);

	% Show system solution
	clf;
	hold on;
	plot(_dates, _logy, 'r');
	plot(_dates, _logAprox, 'b');

	printf("x = %s\n", mat2str(_x, 5));
	printf("a)\terror = %f\n", _logCuadraticError);
	printf("b)\terror = %f\n", _cuadraticError);

endfunction
