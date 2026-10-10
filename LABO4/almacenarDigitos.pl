%dado un valor entero, almacenar cada uno de los digitos que lo componen en una lista, un digito por casilla
%si se requiere almacenar el numero 82671, puede consultarse ?- almacenar(82671, L). la respuesta seria L = [1,7,6,2,8]

%numero de un digito
almacenar(N, [N]) :-
    N >= 0, N < 10.

%ultimo digito va a la cabeza y el resto del numero se procesa en la cola
almacenar(N, [H|T]) :-
    N >= 10,
    H is N mod 10,
    N1 is N // 10,
    almacenar(N1, T).