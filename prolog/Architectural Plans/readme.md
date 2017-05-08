### SPECIFICATION:

Each room has a window and an interior door.
Rooms are interconnected by an interior door.
One room has an exterior door.
A wall can have only one door or window.
No window can face north.
Windows cannot be on opposite sides of the unit.

Key:
* ED - external door
* ID1 - internal door position in room 1
* ID2 - internal door position in room 2
* W1 - window position in room 1
* W2 - window position in room 2

````prolog

plan(ED, ID1, W1, ID2, W2) :-
    frontroom(ED, ID1, W1), room(ID2, W2),
    opposite(ID1, ID2), notopposite(W1, W2).

frontroom(ED, ID, W) :-
    room(ID, W), direction(ED),
    ED\=ID, ED\=W.

room(ID, W) :-
    direction(ID), direction(W),
    ID\=W, W\=north.

direction(east). direction(west). direction(south). direction(north).
opposite(east, west).  opposite(west, east). opposite(south, north). opposite(north, south).
notopposite(W1, W2) :- not(opposite(W1, W2)).
````

![image](https://raw.githubusercontent.com/Meir017/static-files/master/prolog/Architectural%20Plans/Architectural%20Plans.png)