% Dada una lista indicar cuantas veces se encuentra en la misma un elemento determinado.

cuentaOcurrencias(L, Elto) :-
    cuentaOcur(L, Elto, 0).

cuentaOcur([], _, Cont) :-
    write('El elemento se encuentra '),
    write(Cont),
    write(' veces'), nl.

cuentaOcur([Cab|Col], X, Counter) :-
    X == Cab,
    Counter2 is Counter + 1,
    cuentaOcur(Col, X, Counter2).

cuentaOcur([Cab|Col], X, Counter) :-
    X \== Cab,
    cuentaOcur(Col, X, Counter). 



