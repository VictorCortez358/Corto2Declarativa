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

% Derivada de a elevada a la x:
d(x, C^x, C^x*log(C)):- number(C), !.

% Derivada de la multiplicacion de dos funciones:
d(x, A*B, A*DxB + B*DxA):-
    d(x, A, DxA),
    d(x, B, DxB),
    !.

% Derivada de la division de dos funciones:
d(x, A/B, (A*DxB - B*DxA)/B^2):-
    d(x, A, DxA),
    d(x, B, DxB),
    !.

% Derivada de la funcion seno:
d(x, sin(X), cos(X)):- !.

% Derivada de la funcion coseno:
d(x, cos(X), -sin(X)):- !.

% Derivada de la funcion tangente:
d(x, tan(X), 1/cos(X)^2):- !.

% Derivada de la funcion cotangente:
d(x, cot(X), -1/sin(X)^2):- !.

% Derivada del logaritmo natural de x:
d(x, log(X), 1/X):- !.


