% Encontrando el numero de nodos del arbol 

% Caso 1: Arbol vacio

contarNodos([], 0) :- !.

% Caso 2: Solo hay un nodo.
contarNodos([[], _, []], 1) :- !.


% Caso 3: Arbol con mas de un nodo
contarNodos([SubAI, _ , SubAD], Counter) :-
    contarNodos(SubAI, CounterIzq),
    contarNodos(SubAD, CounterDer),    
    Counter is 1 + CounterIzq + CounterDer.

% ?- contarNodos([[], 1, [[], 2, []]], Counter).



