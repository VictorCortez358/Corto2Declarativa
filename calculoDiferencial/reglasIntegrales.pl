% integral de una constante
integral(C, x, C*x):- number(C), !.

% integral de x
integral(X, X, Res) :- 
    Res is (1/2)*X^2, !.

% integral de x a la N
integral(X, X, Res) :- 
    number(N), 
    N1 is N + 1, 
    Res is (1/N1)*X^N1, !.

% integral de una constante por x
integral(X, C*X, Res) :- 
    number(C), 
    Res is (1/2)*C*X^2, !.

% integral de una constante por x a la N
integral(X, C*X^N, Res) :- 
    number(C), 
    number(N), 
    N1 is N + 1, 
    Coef is C/N1, 
    Res is Coef*X^N1, !.

% integral de la suma de dos funciones
integral(X, A + B, Res) :- 
    integral(X, A, ResA), 
    integral(X, B, ResB), 
    Res is ResA + ResB, !.

% integral de la resta de dos funciones
integral(X, A - B, Res) :- 
    integral(X, A, ResA), 
    integral(X, B, ResB), 
    Res is ResA - ResB, !.

