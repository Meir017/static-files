### SPECIFICATION:
`adj(C1, C2)` means **C1** is one of the four colors and **C2** is one of the four colors and they may be used as adjacent colors on the map (that is if they are different).

````prolog
adj(blue, yellow). adj(blue, red). adj(blue, green).
adj(yellow, blue). adj(yellow, red). adj(yellow, green).
adj(red, blue). adj(red, yellow). adj(red, green).
adj(green, blue). adj(green, blue). adj(green, red).
````

The predicate to color a map where :-
    - R1 is adjacent to R2, R3, R5 and R6.
    - R2 is adjacent to R3, R4, R5 and R6.
    - R3 is adjacent to R4 and R6.
    - R5 is adjacent to R6.

````prolog
colorMap(R1, R2, R3, R4, R5, R6) :-
    adj(R1, R2), adj(R1, R3), adj(R1, R5), adj(R1, R6),
    adj(R2, R3), adj(R2, R4), adj(R2, R5), adj(R2, R6),
    adj(R3, R4), adj(R3, R6), 
    adj(R5, R6). 
````

![image](https://raw.githubusercontent.com/Meir017/static-files/master/prolog/Four%20color%20theorem/Four%20color%20theorem.png)

