% Escriba un programa que resuelva el problema de eliminar todas las ocurrencias
% de un elemento determinado de una lista e indique cuantas veces se eliminó.


eliminarOcurrenciasCont(L, Elto, Resultado) :-
    eliminar(L, Elto, 0, Resultado, Contador),
    write('El elemento se eliminó '),
    write(Contador),
    write(' veces'), nl.

eliminar([], _, Contador, [], Contador).

eliminar([Elto|Col], Elto, Cont, Resultado, Contador) :-
    Cont1 is Cont + 1,
    eliminar(Col, Elto, Cont1, Resultado, Contador).
    
eliminar([Cab|Col], Elto, Cont, [Cab|Resultado], Contador) :-
    Cab \== Elto,
    eliminar(Col, Elto, Cont, Resultado, Contador).
