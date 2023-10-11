% Escriba un programa que genere una lista de los valores enteros existentes en el
% intervalo [N, M].

generar_lista(N, M, Lista) :-
    N =< M,
    generar_lista(N, M, [], Lista).

generar_lista(N, M, Acumulador, Lista) :-
    N =< M,
    append(Acumulador, [N], NuevaLista),
    N1 is N + 1,
    generar_lista(N1, M, NuevaLista, Lista).

generar_lista(_, _, Lista, Lista).

