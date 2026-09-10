#Find the eculidean distance 
distance((X1,Y1), (X2, Y2), X):-
    X is sqrt((X2-X1)**2+(Y2-Y1)**2).

#Query    
#distance((0,0), (3,4), X).
#X = 5.0


square(N, C):- 
    between(1, N, _),
    (   between(1, N, _),
    	write(C),
    	fail;
    	nl, fail).
square(_, _).

#query
square(5, '* ').

* * * * *
* * * * *
* * * * *
* * * * *
* * * * *

%square_row/2 prints one row of cols characters
square_row(0, _).
square_row(Cols, Char):-
    write(Char),
    Cols1 is Cols-1,
    square_row(Cols1, Char).


square_row(5, '* ').
* * * * *
1true


remove_duplicates([], []).

remove_duplicates([Head | Tail], Result):-
    member(Head, Tail), !,
    
    remove_duplicates(Tail, Result).


remove_duplicates([Head | Tail], [Head | Result]):-
    remove_duplicates(Tail, Result).
    
    
   % remove_duplicates([b, a, b, b, c], XZ
    %X = [a, b, c]



max(X, Y, X):- X>=Y.
max(X, Y, Y):- Y>=X.


maximum(X, Y, X):- X>=Y, !.
maximum(_, Y, Y).

%maximum(2,5,A).
%A = 5

grade(Mark, 'A'):- Mark >= 75, !.

grade(Mark, 'B'):- Mark >= 65, !.

grade(Mark, 'C'):- Mark >= 55, !.

grade(Mark, 'S'):- Mark >= 35, !.

grade(_, 'F').  %'!-cut'

%grade(85, G).
%G = 'A'

