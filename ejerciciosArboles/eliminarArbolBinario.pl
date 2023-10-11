% Elabore un programa que elimine un nodo de un árbol binario de búsqueda.

eliminar(Dato, L):-
    suprNodo(Dato, L, LFinal),
    mostrarArbolICD(LFinal).

suprNodo(Dato, nulo, _):-
    write('NO existe un nodo con el dato: '), write(Dato), nl.

% caso en el que nodo a eliminar es la raiz
suprNodo(Dato,[Nodo,ArbolIzq,ArbolDer|_], nulo):-
    Nodo == Dato,
    ArbolIzq == nulo, ArbolDer == nulo.

% caso en el que nodo se encuentra en el subarbol izquierdo
suprNodo(Dato,[Nodo,ArbolIzq,ArbolDer|_],[Nodo,ArbolIzq2,ArbolDer|_]):-
    Dato < Nodo,
    suprNodo(Dato, ArbolIzq, ArbolIzq2).

% caso en el que nodo se encuentra en el subarbol derecho
suprNodo(Dato,[Nodo,ArbolIzq,ArbolDer|_],[Nodo,ArbolIzq,ArbolDer2|_]):-
    Dato > Nodo,
    suprNodo(Dato, ArbolDer, ArbolDer2).

mostrarArbolICD(nulo).

mostrarArbolICD([Nodo,ArbolIzq,ArbolDer|_]):-
    Nodo \== nulo,
    mostrarArbolICD(ArbolIzq),
    write(Nodo), write(' '),
    mostrarArbolICD(ArbolDer).