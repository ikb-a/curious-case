lemma mod_congruence:
  fixes a b m :: nat
  assumes "a mod m = b mod m"
  shows "a = b + k * m" for some integer k