edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif', 'Dammam').
edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Dammam', 'Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Qatif', 'Madinah').
edge('Qatif', 'Dammam').

travel(Start, Finish, Path) :-
    path(Start, Finish, [Start], P),
    reverse(P, Path).

path(X, X, P, P).

path(From, To, Visited, Path) :-
    edge(From, X),
    \+ member(X, Visited),
    path(X, To, [X | Visited], Path).
