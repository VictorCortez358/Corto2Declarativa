% Elementos que componen una lista

% 1. Lista vacia -> []
% 2. Lista con un elemento -> [a]
% 3. Lista con dos o mas elementos -> [a, b, c, d, e]

% Listas compuesta por hechos en prolog

% 1. Lista -> [perro(fido), perro(duque), perro(luna), perro(rocky)]

% Como manipular listas en prolog ligando variables a listas
% =(L, [a, b, c, d, e]) -> L = [a, b, c, d, e]

% Como se componen una lista

% 1. Cabeza y cola de una lista
% Para distinguir entre ambas partes de la lista se utiiza el operador: | (pipe)
% por ejemplo [a, b, c, d, e] -> [a | [b, c, d, e]]

% Agregar elementos una lista ejemplo:
% =(L,[a,b,c,d,e]), =(z,[z|L]). -> L = [z, a, b, c, d, e]

% Eliminar elemento de una lista ejemplo:

% Clausula de eliminacion de un elemento de una lista
quitarPrimerElemento([Head|Tail], Tail).

% ?- quitarPrimerElemento([a,b,c,d,e], L).
% L = [b, c, d, e].

