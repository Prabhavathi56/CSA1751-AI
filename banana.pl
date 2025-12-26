% Initial state
% state(MonkeyPos, MonkeyHasBanana, BoxPos, BananaPos)
initial_state(state(room, no, door, ceiling)).

% Goal state
goal_state(state(_, yes, _, _)).

% Actions
action(move(MonkeyPos, NewPos), state(MonkeyPos, HasBanana, BoxPos, BananaPos),
       state(NewPos, HasBanana, BoxPos, BananaPos)) :-
    MonkeyPos \= NewPos.

action(push(BoxPos, NewPos), state(MonkeyPos, HasBanana, BoxPos, BananaPos),
       state(NewPos, HasBanana, NewPos, BananaPos)) :-
    MonkeyPos = BoxPos,
    BoxPos \= NewPos.

action(climb, state(MonkeyPos, HasBanana, BoxPos, BananaPos),
       state(MonkeyPos, yes, BoxPos, BananaPos)) :-
    MonkeyPos = BoxPos,
    BoxPos = BananaPos.

% Planner
solve(State, []) :-
    goal_state(State).

solve(State, [Action|Rest]) :-
    action(Action, State, NewState),
    solve(NewState, Rest).

