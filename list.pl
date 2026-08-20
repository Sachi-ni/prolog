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



element_at([X|_], 1, X).  %Base case: first element
element_at([_|T], N, X):- %Recursive case: skip one and decrement N
    N>1, N1 is N-1, element_at(T, N1, X).
    %query:
            element_at([a,b,c,d], 3, X)
            X = c


concat_list([], List, List).
concat_list([Elem|List1], List2, [Elem|List3]):- concat_list(List1, List2, List3).

%query:
        concat_list([a,b,c], [1,2,3], List).
        List = [a, b, c, 1, 2, 3


sum_of_element([], 0).
sum_of_element([Head|Tail], Sum):- sum_of_element(Tail, Tailsum), Sum is Head+Tailsum. 

%query:
        sum_of_element([1,2,3,4], L).
        L = 10


length_list([], 0).
length_list([_|Tail], L):- length_list(Tail, K),  L is K+1.

%query:
        length_list([1,2,3,4], L).
        L = 4


%Base case: Element is at the head (position 1)
index_of(Element, [Element|_], 1).

index_of(Element, [_|Tail], Index):- index_of(Element, Tail, Index1), Index is Index1 + 1.

    %query:
    index_of(c, [a,b,c,d], X).
    X = 3
    false


last_element([Element], Element).
last_element([_|Tail], Element):- last_element(Tail, Element).

%query:
        last_element([a,b,c,d], X).
        X = d
        false


%query:(5>3-> write('Yes');write('No')).
Yes
1true


%Nested If:(X>0-> write('Positive'); X<0-> write('Negative'); write('Zero')).

max_list([X],X).

max_list([Head|Tail], Max):- max_list(Tail, MaxElement),
    					(Head >= MaxElement -> Max = Head; Max = MaxElement).

%Query
        max_list([2,30,6,90],X).
        X = 90
        false


remove_first([_|Tail], Tail).

%Query:
        remove_first([a,b,c,d],X).
        X = [b, c, d]

remove_last([_],[]).
remove_last([Head|Tail], [Head|Result]):- remove_last(Tail,Result).

%Query:
    remove_last([a,b,c,d],X).
    X = [a, b, c]
    false


%remove the first occurrence of a specified element from a list.

remove_first_occurance([_],_,[]).

remove_first_occurance([Head|Tail],Element,[Head|Result]):-
    remove_first_occurance(Tail, Element,Result).


    %query:
    remove_first_occurance([a,b,c,b,d],b,X).
    X = [a, b, c, b]
    false

            
