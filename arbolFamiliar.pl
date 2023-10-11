madre(josefina, mario).
madre(josefina, ligia).
madre(silvia, marina).
madre(silvia, jaime).
madre(silvia, carlos).
madre(ligia, regina).
madre(ligia, jacinta).
padre(manuel, mario).
padre(manuel, ligia).
padre(mario, marina).
padre(mario, jaime).
padre(mario, carlos).
padre(julio, regina).
padre(julio, jacinta).

% Reglas

% Regla: abuelo

% Verifica solo con la hija
abuela(X, Y) :-
    madre(X, Z),
    madre(Z, Y).

% abuela(Abuela, Nieto) :-
%     madre(Abuela, Hijo),
%     madre(Hijo, Nieto).


% Verifica con la hija y el hijo
abuela(X,Y) :-
    madre(X, Z), (madre(Z, Y); padre(Z, Y)).

