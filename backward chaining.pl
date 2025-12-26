/* Facts */
parent(john, mary).
parent(mary, susan).
parent(john, alex).
parent(alex, james).

/* Rules */
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).
