member(a, [a, b, c]).
1true
false

member(X, [1, 2, 3]).
X = 1
X = 2
X = 3

append([1,2], [3,4], X).
X = [1, 2, 3, 4]

append(X, Y, [1, 2, 3]).
X = [],
Y = [1, 2, 3]
X = [1],
Y = [2, 3]
X = [1, 2],
Y = [3]
X = [1, 2, 3],
Y = []
false

select(b, [a,b,c], R).
R = [a, c]
false

select(b, [a,b,b,c], R).
R = [a, b, c]
R = [a, b, c]
false

select(X, [a,b], [b]).
X = a
false

nth0(0, [a,b,c], X).
X = a

nth1(2, [a,b,c], X).
X = b

nth0(2, [3,4,5,6], X).
X = 5

reverse([1,2,3], X).
X = [3, 2, 1]
