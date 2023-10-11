% Elabore la regla intercalar_listas(+, +, -), cuyos dos primeros parámetros son
% listas de igual longitud. Por ejemplo, [mango, fresa, jocote] y [tenaza, clavo, tornillo], 
% en el tercer parámetro se devuelve una lista que resulta de combinar las
% dos anteriores, así: [mango, tenaza, fresa, clavo, jocote, tornillo].

% intercalar_listas(+, +, -)
intercalar_listas([], [], []).

intercalar_listas([H1|T1], [H2|T2], [H1, H2|T3]):-
    intercalar_listas(T1, T2, T3).

% ?- intercalar_listas([mango, fresa, jocote], [tenaza, clavo, tornillo], L).