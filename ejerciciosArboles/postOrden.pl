% PostOrden: subárbol izquierdo - subárbol derecho - nodo padre.

mostrarArbolPostorden([]).

mostrarArbolPostorden([SubIzq, SubDer, Raiz]) :-
    mostrarArbolPostorden(SubIzq),
    mostrarArbolPostorden(SubDer),
    write(Raiz), write(" ").