% Elaborar un programa que indique si una variable contiene o no una lista.

contieneLista(X) :-
    (
        is_list(X) ->
        write("La variable contiene una lista.")
        ;
        write("La variable no contiene una lista.")
    ).



