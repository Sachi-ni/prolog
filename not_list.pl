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
