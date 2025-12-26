% hanoi(NumberOfDisks, Source, Auxiliary, Destination)

hanoi(0, _, _, _) :- !.
hanoi(N, A, B, C) :-
    N > 0,
    N1 is N - 1,
    hanoi(N1, A, C, B),
    write('Move disk from '), write(A),
    write(' to '), write(C), nl,
    hanoi(N1, B, A, C).
