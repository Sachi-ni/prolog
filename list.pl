[1,2,3,4,5] = [Head|Tail].
Head = 1,
Tail = [2, 3, 4, 5]

[elephant,[],X,parent(X,tom),[a,b,c],f(22)] = [Head|Tail].
Head = elephant,
Tail = [[], X, parent(X,tom), [a, b, c], f(22)]

[X] = [Head|Tail].
Head = X,
Tail = []

[dog,cat,bird] = [Head|Tail].
Head = dog,
Tail = [cat, bird] %Head gives first element.

[_,X|_] = [dog,cat,bird].
X = cat  %pop out the second element.


analyse_list(List):-                    %matches non-empty lists.                                    
    List = [Head|Tail],
    write('This is the head of your list: '), write(Head),nl,
    write('This is the tail of your list: '), write(Tail),nl.

analyse_list([]):-						 %matches empty lists.
    write('This is an empty list: '),nl.      

    %queries:-
    analyse_list([cat,dog,bird]).
    This is the head of your list: cat
    This is the tail of your list: [dog, bird]
    1true
    analyse_list([]).
    This is an empty list:
    1true



second_element(List):-                  
    List = [_,X|_],
    write('This is the second element of your list: '), write(X),nl.

    %query:
    second_element([a,b,c,d]).
    This is the second element of your list: b
    1true
