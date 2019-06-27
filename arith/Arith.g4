grammar Arith;

options { language=Swift; }

prog:   term;

term:   'true'
    |	'false'
    |   'if' term 'then' term 'else' term
    |   '0'
    |   'succ' term
    |   'pred' term
    |   'iszero' term
    ;

