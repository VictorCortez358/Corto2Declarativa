% Escriba un programa en Prolog que construya una lista incorporando a la misma
% n repeticiones de un número entero dado.

nRepeticiones(_, 0, []).

nRepeticiones(Elto, N, [Elto|T]):-
    N2 is N - 1,
    nRepeticiones(Elto, N2, T).

% ?- nRepeticiones(1, 3, L).