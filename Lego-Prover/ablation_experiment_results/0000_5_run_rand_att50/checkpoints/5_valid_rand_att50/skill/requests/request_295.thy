lemma linear_diophantine:
  fixes a b c :: int
  assumes "gcd a b = d" "d divides c"
  shows "\<exists>x y. a * x + b * y = c"