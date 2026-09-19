male(majed).
male(abdullah).
male(mohammed).
female(samyah).
female(manal).
female(maha).
female(shahad).
female(rana).
female(lama).
parent(majed,abdullah).
parent(majed,manal).
parent(majed,maha).
parent(majed,shahad).
parent(abdullah,mohammed).
parent(abdullah,lama).
parent(samyah,abdullah).
parent(samyah,manal).
parent(samyah,maha).
parent(samyah,shahad).
parent(rana,mohammed).
parent(rana,lama).
father(X,Y) :-
    parent(X,Y),
    male(X).
mother(X,Y) :-
    parent(X,Y),
    female(X).
sister(X,Y) :-
    parent(P,X),
    parent(P,Y),
    female(X),
    X \= Y.
brother(X,Y) :-
    parent(P,X),
    parent(P,Y),
    male(X),
    X \= Y.

