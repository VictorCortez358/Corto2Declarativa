% Dado como un argumento un numero N, elabore una clasula recursiva que imprima en pantalla 
% una letra leida desde teclado esa cantidad de veces en prolog


escribir(0, _):- !.

escribir_letra(N):-
    N =< 0,
    writeln("Debe ingresar un numero mayor a 0."),
    !, fail.

escribir_letra(N):-
    N > 0,
    write("Digite la letra a repetir: "),
    read(L),
    escribir(N, L).

escribir(N, L):-
    writeln(L),
    N1 is N - 1,
    escribir(N1, L).




