% Elaborar un programa en Prolog que cuente la cantidad de elementos de una lista.

contarElementos(Lista):-
    length(Lista, 0),
    write("La cantidad de elementos que posee la lista es de: "),
    write(0),
    !.

contarElementos(Lista) :-
    length(Lista, N),
    write("La cantidad de elementos que posee la lista es de: "),
    write(N).


