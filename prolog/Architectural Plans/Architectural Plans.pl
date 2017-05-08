/*
Key:
* ED - external door
* ID1 - internal door position in room 1
* ID2 - internal door position in room 2
* W1 - window position in room 1
* W2 - window position in room 2
*/

% ED, ID1, ID2, W2 are all directions satisfying the planning requirements above.
plan(ED, ID1, W1, ID2, W2) :-
    frontroom(ED, ID1, W1), room(ID2, W2),
    opposite(ID1, ID2), notopposite(W1, W2).

% ED, ID, W are all directions satisfying the planning requirements above. 
frontroom(ED, ID, W) :-
    room(ID, W), direction(ED),
    ED\=ID, ED\=W.

% ID, W are all directions satisfying the planning requirements above.
room(ID, W) :-
    direction(ID), direction(W),
    ID\=W, W\=north.

direction(east). direction(west). direction(south). direction(north).
opposite(east, west).  opposite(west, east). opposite(south, north). opposite(north, south).
notopposite(W1, W2) :- not(opposite(W1, W2)).

% ['D:\\Dropbox\\School\\Functional and Logic Programming\\prolog\\prolog\\Architectural Plans\\Architectural Plans.pl']