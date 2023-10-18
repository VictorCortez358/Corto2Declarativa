
menor([Nodo, nulo, nulo], Nodo):- !. 

menor([_, ArbolIzq, ArbolDer], Menor):- 
    menor(ArbolIzq, Menor1),
    menor(ArbolDer, Menor2),
    Menor is min(Menor1, Menor2).
    

% Elabore un programa que elimine un nodo de un árbol binario de búsqueda.


eliminar(Dato, L, LFinal):-
    suprNodo(Dato, L, LFinal),
    mostrarArbolICD(LFinal).

% caso en el que nodo a eliminar es la raiz
suprNodo(Dato, nulo, _):- !.

% caso en el que nodo a eliminar es una hoja
suprNodo(Dato,[Dato, nulo, nulo], nulo):- !.

% caso en el que nodo a eliminar tiene un hijo
suprNodo(Dato, [Dato, ArbolDer, nulo], ArbolDer):- !.

suprNodo(Dato, [Dato, nulo, ArbolIzq], ArbolIzq):- !.

% caso en el que nodo a eliminar tiene dos hijos
% Seleccionar del subárbol derecho el nodo que ocupara el sitio del nodo eliminado. 
% Buscaríamos el nodo de menor valor de todo el subárbol derecho, 
% que debe ser el que se encuentre mas a la izquierda

suprNodo(Dato, [Dato, ArbolIzq, ArbolDer ], [Menor, NArbolIzq, NArbolDer]):- 
    menor(Arbol, Menor),
    suprNodo(Menor, ArbolIzq, NArbolIzq),
    suprNodo(Menor, ArbolDer, NArbolDer),
    !.


% caso en el que nodo se encuentra en el subarbol izquierdo
suprNodo(Dato,[Nodo,ArbolIzq,ArbolDer],[Nodo,ArbolIzq2,ArbolDer]):-
    Dato < Nodo,
    suprNodo(Dato, ArbolIzq, ArbolIzq2).

% caso en el que nodo se encuentra en el subarbol derecho
suprNodo(Dato,[Nodo,ArbolIzq,ArbolDer],[Nodo,ArbolIzq,ArbolDer2]):-
    Dato > Nodo,
    suprNodo(Dato, ArbolDer, ArbolDer2).


% Mostrar

mostrarArbolICD(nulo).

mostrarArbolICD([Nodo,ArbolIzq,ArbolDer]):-
    Nodo \== nulo,
    mostrarArbolICD(ArbolIzq),
    write(Nodo), write(' '),
    mostrarArbolICD(ArbolDer).