% Se lanza una bola hacia arriba de modo que su altura sobre el suelo después de t
% segundos es h = 20t-4.9t2

% ¿Cuál es la expresión de la velocidad?

velocidadExpresion(t, V) :-
    t = 1,  % Puedes cambiar este valor según el tiempo deseado
    h is 20*t-4.9*t^2,
    d(t, h, V),
    format("La expresión de la velocidad es: ~w", [V]).

    
d(x, A - B, DxA - DxB):-
    d(x, A, DxA),
    d(x, B, DxB),
    !.

% Derivada de una constante:
d(x, C, 0):- number(C), !.

% Derivada de x respecto a x:
d(x, x, 1):- !.

% Derivada de x a la N:
%d(x, x^N, N*x^N1):- number(N), is(N1, -(N, 1)), !.

% Derivada de una constante por x:
d(x, C*x, C):- number(C), !.

% Derivada de una constante por x a la N:
d(x, C*x^N, Coef*x^N1):-
    number(C),
    number(N),
    is(N1, -(N, 1)),
    is(Coef, *(C, N)),
    !.

% Derivada de la suma de dos funciones:
d(x, A + B, DxA + DxB):-
    d(x, A, DxA),
    d(x, B, DxB),
    !.

% Derivada de la resta de dos funciones:
d(x, A - B, DxA - DxB):-
    d(x, A, DxA),
    d(x, B, DxB),
    !.






