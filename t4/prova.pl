regra1(A, B, X):-
    member(X, A),
    not(member(X, B)).
regra1(A, B, X):-
    member(X, B),
    not(member(X, A)).

baseregra2(A, X, Y):-
    member(X, A),
    not(member(Y, A)).

regra2(C, D, F):-
    baseregra2(C, 's', 't');
    baseregra2(D, 's', 't');
    baseregra2(F, 's', 't').

baseregra3(A, X, Y):-
    member(X, A),
    member(Y, A).

regra3(C, D, F):-
    baseregra3(C, 'v', 'l');
    baseregra3(D, 'v', 'l');
    baseregra3(F, 'v', 'l').

times(C, D, F):-
    regra1(C, D, 'l'),
    regra1(C, D, 'm'),
    regra1(D, F, 'r'),
    regra1(D, F, 's'),
    regra1(D, F, 't'),
    regra1(D, F, 'v'),
    regra2(C, D, F),
    regra3(C, D, F),
    member('v', D),
    member('s', C).
