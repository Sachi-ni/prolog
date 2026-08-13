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
