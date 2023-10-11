% Elabore un programa que inserte un nuevo nodo en un árbol binario de búsqueda.

insertar(Dato, LL):-
    insNodo(Dato, LL, LLFinal).

% Caso base 1: El árbol está vacío
% el Dato se inserta como raíz
insNodo(Dato, [], [nulo, Dato, nulo]).

% Caso base 2: El dato ya existe
% el dato no se inserta y se muestra un mensaje
insNodo(Dato,[ArbolIzq, Dato, ArbolDer], [ArbolIzq, Dato, ArbolDer]):-
    write('El Dato ya existe: '), writeln(Dato), nl.

% Caso base 3: si ya existe un nodo raiz 
insNodo(Dato, nulo, [nulo,Dato, nulo]).

insNodo(Dato,[ArbolIzq,Nodo, ArbolDer],[ArbolIzq2,Nodo, ArbolDer]):-
    % verificamos si el dato es menor que el nodo
    <(Dato, Nodo),
    insNodo(Dato, ArbolIzq, ArbolIzq2).

% Caso base 5: El dato es menor que el nodo
insNodo(Dato,[ArbolIzq, Nodo, ArbolDer],[ArbolIzq, Nodo, ArbolDer2]):-
    % verificamos si el dato es mayor que el nodo
    >(Dato, Nodo),
    insNodo(Dato, ArbolDer, ArbolDer2).