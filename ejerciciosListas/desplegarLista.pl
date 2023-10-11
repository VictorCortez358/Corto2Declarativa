% un programa en Prolog que despliegue todos los
% elementos de una lista podría verse como este:

desplegarLista([]).

desplegarLista([H|T]):-
    write(H), nl,
    desplegarLista(T).