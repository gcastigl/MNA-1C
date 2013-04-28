function answer = y(a_i, yValues)
    answer = e .** (a_i(1) + a_i(2) * yValues + a_i(3) * (yValues .* yValues));
endfunction
