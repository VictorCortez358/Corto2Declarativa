% Preorden: nodo padre - subárbol izquierdo - subárbol derecho. 

mostrarArbolPreorden([]).

mostrarArbolPreorden([SubIzq, Raiz, SubDer]) :-
    write(Raiz), write(" "),
    mostrarArbolPreorden(SubIzq),
    mostrarArbolPreorden(SubDer).