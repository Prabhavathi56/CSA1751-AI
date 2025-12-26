% Facts
parent(john, mary).
parent(mary, susan).
parent(susan, tom).

% Rule
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Forward chaining simulation
forward :-
    % Print all ancestor relationships
    ancestor(X, Y),
    format('~w is an ancestor of ~w~n', [X, Y]),
    fail.  % force backtracking to get all solutions
forward.    % succeed after all solutions are printed
