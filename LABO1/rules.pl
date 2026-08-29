:- [base].

%que personajes tienen arma de fuego?

armaDeFuego(X):-
    armado(X, pistola).

%que lugares tienen la misma dificultad?

lugarDificultad(X, Y):-
    X\==Y,
    dificultad(X, Z),
    dificultad(Y, Z).	

% que personajes estan en el mismo lugar (pueblo)?

quienesPueblo(X, Y, Z):-
    X\==Y,
    X\==Z,
    Y\==Z,
    encuentraP(X, W),
    encuentraP(Y, W),
    encuentraP(Z, W).

