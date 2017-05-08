adj(blue, yellow). adj(blue, red). adj(blue, green).
adj(yellow, blue). adj(yellow, red). adj(yellow, green).
adj(red, blue). adj(red, yellow). adj(red, green).
adj(green, blue). adj(green, blue). adj(green, red).

colorMap(R1, R2, R3, R4, R5, R6) :-
    adj(R1, R2), adj(R1, R3), adj(R1, R5), adj(R1, R6),
    adj(R2, R3), adj(R2, R4), adj(R2, R5), adj(R2, R6),
    adj(R3, R4), adj(R3, R6), 
    adj(R5, R6). 