lemma linear_combination:
  fixes a b c d :: nat
  assumes "a * c + b * d = 0"
  shows "a mod d = 0 \<and> b mod c = 0"