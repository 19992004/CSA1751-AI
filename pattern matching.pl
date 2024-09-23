person(john, 25, engineer).
person(alice, 30, doctor).
person(bob, 25, engineer).

% Rules
match_age(X, Y) :-
    person(X, Age, _),
    person(Y, Age, _).

match_profession(X, Y) :-
    person(X, _, Profession),
    person(Y, _, Profession).

match_both(X, Y) :-
    person(X, Age, Profession),
    person(Y, Age, Profession).

% Queries
% Match people with the same age
?- match_age(X, Y).

% Match people with the same profession
?- match_profession(X, Y).

% Match people with the same age and profession
?- match_both(X, Y).

