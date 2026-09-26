%Dado un número N, se debe sumar N con todos los números anteriores hasta llegar a 1

agregarNum(1, 1).
agregarNum(X, Y):-
    X > 1, N is X - 1, agregarNum(N, R), Y is X+R.
