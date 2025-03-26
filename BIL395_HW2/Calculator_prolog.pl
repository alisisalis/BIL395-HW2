calc(X, X) :- number(X).

calc(A + B, Result) :-
    calc(A, A1),
    calc(B, B1),
    Result is A1 + B1.

calc(A - B, Result) :-
    calc(A, A1),
    calc(B, B1),
    Result is A1 - B1.

calc(A * B, Result) :-
    calc(A, A1),
    calc(B, B1),
    Result is A1 * B1.

calc(A / B, Result) :-
    calc(A, A1),
    calc(B, B1),
    B1 =\= 0,
    Result is A1 / B1.