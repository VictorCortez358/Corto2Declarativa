% Escriba un programa que resuelva el problema de eliminar, de una lista, el
% elemento ubicado en una posición determinada.

eliminar_en_posicion(N, ListaOriginal, ListaResultado) :-
    eliminar_en_posicion(N, ListaOriginal, 1, [], ListaResultado).

eliminar_en_posicion(_, [], _, ListaResultado, ListaResultado).

eliminar_en_posicion(N, [Elemento|Cola], N, Acumulador, ListaResultado) :-
    N1 is N + 1,
    append(Acumulador, Cola, ListaResultado).
    
eliminar_en_posicion(N, [Elemento|Cola], PosActual, Acumulador, ListaResultado) :-
    PosActual < N,
    N1 is PosActual + 1,
    append(Acumulador, [Elemento], AcumuladorActualizado),
    eliminar_en_posicion(N, Cola, N1, AcumuladorActualizado, ListaResultado).


