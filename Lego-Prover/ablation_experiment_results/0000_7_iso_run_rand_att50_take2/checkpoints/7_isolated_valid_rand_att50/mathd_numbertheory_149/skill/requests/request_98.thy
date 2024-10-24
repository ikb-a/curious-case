lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a * x + b mod m = c"
  shows "x = (c - b) * inv a mod m"