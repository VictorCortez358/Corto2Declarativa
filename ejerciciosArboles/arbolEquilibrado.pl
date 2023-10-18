% Un árbol binario se dice que es equilibrado el número de niveles de sus
% subárboles izquierdo y derecho no difieren en más de una unidad. Haga un
% programa en Prolog que evalúe si un árbol es equilibrado

% Predicado para calcular la altura de un árbol
altura([], 0).

altura([SubAI, _, SubAD], Altura) :-
    altura(SubAI, AlturaAI),
    altura(SubAD, AlturaAD),
    Altura is max(AlturaAI, AlturaAD) + 1.

% Predicado para verificar si un árbol es equilibrado
arbolEquil([], _) :-
    write("El arbol esta vacio"),
    !.


arbolEquil([[], _, []], _) :-
    write("El arbol esta equilibrado"),
    !.

arbolEquil([SubAI, _ , SubAD]) :-
    altura(SubAI, AlturaI),
    altura(SubAD, AlturaD),
    Diff is abs(AlturaI - AlturaD),
    (
        Diff =< 1 ->
        write("El arbol esta equilibrado")
        ;
        write("El arbol no esta equilibrado")
    ).

% ?- arbolEquil([[], 1, [[], 2, []]]).

% ?- arbolEquil([[], 1, [[], 2, [[], 3, []]]]).



