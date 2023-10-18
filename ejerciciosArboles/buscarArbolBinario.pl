
% Caso base 1: El árbol está vacío
buscarNodo(Dato, nulo):-
    write('El dato: '),
    write(Dato),
    write(', NO se encuentra en el arbol'),
    !, fail.

% Caso base 2: El dato ya existe
buscarNodo(Dato,[_,Dato, _]):-
    write('Se ha ENCONTRADO el dato: '), 
    write(Dato).

% Caso base 3: si no se encuentra el dato en el nodo raiz
% se busca en el subarbol izquierdo

buscarNodo(Dato,[ArbolIzq, Nodo, _]):-
    <(Dato, Nodo),
    buscarNodo(Dato, ArbolIzq).

% Caso base 4: si no se encuentra el dato en el nodo raiz
% se busca en el subarbol derecho

buscarNodo(Dato,[_, Nodo, ArbolDer]):-
    >(Dato, Nodo),
    buscarNodo(Dato, ArbolDer).

% Ejemplo de uso:
% buscarNodo(5, [ [ [nulo, 1, nulo], 2, [nulo, 3, nulo] ], 4, [ [nulo, 5, nulo], 6, [nulo, 7, nulo] ] ]).