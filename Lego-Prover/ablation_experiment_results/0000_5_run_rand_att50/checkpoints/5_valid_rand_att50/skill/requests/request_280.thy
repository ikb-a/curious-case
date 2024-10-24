lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "a = k * m + b" for some integer k