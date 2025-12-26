% state(MonkeyPos, BoxPos, OnBox, HasBanana)

initial(state(door, window, no, no)).
goal(state(_, _, _, yes)).

% move monkey
move(state(X, B, O, H), state(Y, B, O, H)) :-
    X \= Y.

% push box
push(state(X, X, no, H), state(Y, Y, no, H)) :-
    X \= Y.

% climb box
climb(state(X, X, no, H), state(X, X, yes, H)).

% grab banana
grab(state(middle, middle, yes, no),
     state(middle, middle, yes, yes)).

solve(S) :- goal(S).
solve(S) :-
    ( move(S, S1)
    ; push(S, S1)
    ; climb(S, S1)
    ; grab(S, S1)
    ),
    solve(S1).

start :-
    initial(S),
    solve(S),
    write('Monkey got the banana').
