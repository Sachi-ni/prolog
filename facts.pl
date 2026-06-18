bigger(elephant, horse).
bigger(horse, donkey).
bigger(donkey, dog).
bigger(donkey, monkey).

is_bigger(X, Y) :- bigger(X, Y).
is_bigger(X, Y) :- bigger(X, Z), is_bigger(Z, Y).

			bigger(horse, donkey).
			1true

			bigger(horse, elephant).
			false

			bigger(elephant, monkey).
			false

			is_bigger(elephant, monkey).
			1true

			is_bigger(monkey, elephant).
			false

			is_bigger(elephant, X).
			X = horse
			X = donkey
			X = dog
			X = monkey

			is_bigger(X, donkey).
			X = horse
			X = elephant

			is_bigger(X, Y).
			X = elephant,
			Y = horse
			X = horse,
			Y = donkey
			X = donkey,
			Y = dog
			X = donkey,
			Y = monkey
			X = elephant,
			Y = donkey
			X = elephant,
			Y = dog
			X = elephant,
			Y = monkey
			X = horse,
			Y = dog
			X = horse,
			Y = monkey

			is_bigger(donkey, X), is_bigger(X, monkey).
			false

			is_bigger(horse, X), is_bigger(X, monkey).
			X = donkey
			false

-----------------------------------------------------------------------------
parent(charles, william). %Charles is a parent of William
parent(william, george).  %William is a parent of Geroge

grandfather(G, C) :- parent(G, M), parent(M, C).

			grandfather(G, C).
			C = george,
			G = charles
