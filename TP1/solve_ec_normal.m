function x = solve_ec_normal(A, yValues)
    x = ((A' * A) ** -1) * A' * yValues;
endfunction
