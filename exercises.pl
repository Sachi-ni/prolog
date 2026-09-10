#Find the eculidean distance 
distance((X1,Y1), (X2, Y2), X):-
    X is sqrt((X2-X1)**2+(Y2-Y1)**2).

#Query    
#distance((0,0), (3,4), X).
#X = 5.0
