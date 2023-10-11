% La altura de un årbol se calcula en base a la cantidad de nodos recorridos en el camino mas largo de la raiz
% a una hoja en un årbol. Haga un programa en Prolog que calcule la altura de un årbol.

% Ejemplo de ejecución:

% caso 1: árbol vacío
alturaArbol([], 0) :- !.

% caso 2: árbol con un solo nodo
alturaArbol([_, _, _], 1).

% caso 3: árbol con mas de un nodo
alturaArbol([SubAI, _, SubAD], H) :-
    % calculamos la altura de los subárboles izquierdo
    alturaArbol(SubAI, HI),
    % calculamos la altura de los subárboles derecho
    alturaArbol(SubAD, HD),
    % la altura del árbol es 1 + la altura del subárbol mas alto
    H is 1 + max(HI, HD).

% ?- alturaArbol([[], 1, [[], 2, []]], H).