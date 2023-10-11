% Inorden u orden central: subárbol izquierdo - nodo padre - subárbol derecho.

mostrarArbolInorden([]).

mostrarArbolInorden([SubIzq, Raiz, SubDer]) :-
    mostrarArbolInorden(SubIzq),
    write(Raiz), write(" "),
    mostrarArbolInorden(SubDer).