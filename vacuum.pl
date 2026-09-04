:- dynamic dirty/1.
:- dynamic vacuum_location/1.

room(a).
room(b).
room(c).

adjacent(a, b).
adjacent(b, a).
adjacent(b, c).
adjacent(c, b).

dirty(a).
dirty(c).

vacuum_location(a).

action(clean) :-
    vacuum_location(Room),
    dirty(Room).

action(move(b)) :-
    vacuum_location(a),
    dirty(c).

action(move(c)) :-
    vacuum_location(b),
    dirty(c).

action(stop) :-
    \+ dirty(_).

perform(clean) :-
    vacuum_location(Room),
    retract(dirty(Room)),
    format('Vacuum cleaned room ~w.~n', [Room]).

perform(move(ToRoom)) :-
    retract(vacuum_location(CurrentRoom)),
    assert(vacuum_location(ToRoom)),
    format('Vacuum moved from room ~w to room ~w.~n',
           [CurrentRoom, ToRoom]).

perform(stop) :-
    format('All rooms are clean.~n', []).

% Start the vacuum cleaner agent
start :-
    action(Action),
    perform(Action),
    ( Action = stop ->
        true
    ;
        start
    ).