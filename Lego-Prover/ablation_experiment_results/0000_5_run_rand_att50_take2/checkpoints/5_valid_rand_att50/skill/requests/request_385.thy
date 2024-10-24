lemma linear_combination:
  fixes a b c d :: nat
  assumes "a * x + b * y = c"
  shows "x = (c - b * y) / a"