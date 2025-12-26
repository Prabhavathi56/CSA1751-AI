% Facts: Gender
female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

% Facts: Parent relationships
parent(pam, liz).
parent(pam, tom).
parent(tom, ann).
parent(bob, pat).
parent(jim, bob).

% Mother relation
mother(Mother, Child) :-
    female(Mother),
    parent(Mother, Child).

% Father relation
father(Father, Child) :-
    male(Father),
    parent(Father, Child).

% Grandfather relation
grandfather(Grandfather, Grandchild) :-
    male(Grandfather),
    parent(Grandfather, Parent),
    parent(Parent, Grandchild).

% Grandmother relation
grandmother(Grandmother, Grandchild) :-
    female(Grandmother),
    parent(Grandmother, Parent),
    parent(Parent, Grandchild).

% Sister relation
sister(Sister, Person) :-
    female(Sister),
    parent(Parent, Sister),
    parent(Parent, Person),
    Sister \= Person.

% Brother relation
brother(Brother, Person) :-
    male(Brother),
    parent(Parent, Brother),
    parent(Parent, Person),
    Brother \= Person.
