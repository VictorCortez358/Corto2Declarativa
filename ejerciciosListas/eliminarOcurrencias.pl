% Escriba un programa que resuelva el problema de eliminar todas las ocurrencias
% de un elemento determinado de una lista.


eliminarOcurrencias(L, Elto, Resultado) :-
    eliminar(L, Elto, Resultado).

eliminar([], _, []).

eliminar([Elto|Col], Elto, Resultado) :-
    eliminar(Col, Elto, Resultado).
    
eliminar([Cab|Col], Elto, [Cab|Resultado]) :-
    Cab \== Elto,
    eliminar(Col, Elto, Resultado).

