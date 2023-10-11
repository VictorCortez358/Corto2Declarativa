

% Caso base: promedio de una lista vacía (P se instancia con 0 y se muestra un mensaje de error)
promedio_lista([], 0) :-
    write("La lista está vacía, no es posible calcular el promedio."), nl.

% Caso recursivo: calcular el promedio de una lista no vacía
promedio_lista(Lista, Promedio) :-
    sumar_elementos_y_contar(Lista, Suma, Contador),
    ( Contador = 0 ->
        write("La lista no contiene números, no es posible calcular el promedio."), nl,
        Promedio = 0
    ; Promedio is Suma / Contador
    ).

% Regla auxiliar para sumar elementos y contar

sumar_elementos_y_contar([], 0, 0).

sumar_elementos_y_contar([X|Xs], Suma, Contador) :-
    number(X),
    sumar_elementos_y_contar(Xs, SumaResto, ContadorResto),
    Suma is X + SumaResto,
    Contador is 1 + ContadorResto.

sumar_elementos_y_contar([_|Xs], Suma, Contador) :-
    sumar_elementos_y_contar(Xs, Suma, Contador).
