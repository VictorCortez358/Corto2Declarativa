% Elabore una regla que invierta el contenido de una lista, invierte_lista(+, -). En el
% rimer argumento recibe la lista original y en el segundo devuelve la lista invertida.

% invertir_lista(+, -)
invertir_lista([], []).

invertir_lista([H|T], L):-
    invertir_lista(T, Resto),
    append(Resto, [H], L).