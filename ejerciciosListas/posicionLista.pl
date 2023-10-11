% Localizar un elemento en una lista e indicar la posición que ocupa de izquierda a
% derecha (desde la cabeza, siendo la cabeza la posición 1).

localizaElemento(L, Elto):-
    localizaElto(L, Elto, 1), !.

localizaElto([], _, _):-
    write('El elemento no esta en la lista'), nl, !, fail.

localizaElto([Cab|Col], X, Pos):-
    X \== Cab,
    Pos2 is +(Pos, 1),
    localizaElto(Col, X, Pos2).

localizaElto([Cab|Col], X, Pos):-
    X == Cab,
    write('Elemento encontrado en la posicion '),
    write(Pos).





