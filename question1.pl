
============================================================================
Here, I have added an extra rule that is the (spouse). Using which the 
male_cousin and mother_in_law are implemented.

Also, two other rules are established namely, getAllMaleCousin and getAllMotherInLaw
to get all the respective pairs without redundancies.
============================================================================

=======================================================================================
Zaid Abdulhadi
Nikhil Patil
Jenish Soni
=======================================================================================

Declarative Database:

woman(sandra).
woman(joanne).
woman(helen).
woman(isabelle).
woman(daphne).
woman(vanessa).
man(tom).
man(peter).
man(mike).
man(ron).
man(charles).
man(michael).
man(mark).
man(adam).
parent(tom, daphne).
parent(tom, peter).
parent(tom, helen).
parent(sandra, peter).
parent(sandra, helen).
parent(sandra, daphne).
parent(joanne, ron).
parent(joanne, isabelle).
parent(peter, ron).
parent(peter, isabelle).
parent(helen, charles).
parent(helen, michael).
parent(mike, charles).
parent(mike, michael).
parent(mark, adam).
parent(mark, vanessa).
parent(daphne, adam).
parent(mark, vanessa).




spouse(X, Y):- parent(X, P), parent(Y, P), parent(X, Q), parent(Y, Q), woman(X), man(Y).
spouse(X, Y):- parent(X, P), parent(Y, P), parent(X, Q), parent(Y, Q), man(X), woman(Y).

mother_in_law(X, Y):- woman(X),
                      spouse(Y, Z),
                      parent(X, Z).

getAllMotherInLaw(Set):- findall((X,Y), mother_in_law(X, Y), Lst),
                         list_to_set(Lst, Set).

male_cousin(X, Y):- man(X),
                    parent(P, X),
                    parent(Q, Y),
                    parent(K, P),
                    parent(K, Q),
                    P \= Q.

getAllMaleCousin(Set):- findall((X, Y), male_cousin(X, Y), Lst),
                        list_to_set(Lst, Set).




