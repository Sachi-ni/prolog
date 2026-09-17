happy(alice).
          \+ happy(bob).
          1true


bird(sparrow).
bird(eagle).

not_bird(X) :- \+bird(X).
                          not_bird(cat).
                          1true
                          not_bird(eagle).
                          false

                          
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

not_in_list(X, L) :- \+member(X, L).

                                        not_in_list(10,[1,2,3]).
                                        1true

likes(mary, pizza).
likes(john, pizza).

                    likes(mary, pizza); likes(john, pizza). // ';'- or
                    1true
                    2true
                    
                    likes(mary, pizza), likes(john, pizza). //','- and
                    1true


          (Result = a; Result= b), Result = b.
          Result = b
          (Result = a; Result= b), !, Result = b.
          false
          
          member(X, [a,b,c]).
          X = a
          X = b
          X = c
          member(X, [a,b,c]), !.
          X = a
          member(X, [a,b,c]), X=b.
          X = b
          false
          member(X, [a,b,c]), !, X=b.
          false
