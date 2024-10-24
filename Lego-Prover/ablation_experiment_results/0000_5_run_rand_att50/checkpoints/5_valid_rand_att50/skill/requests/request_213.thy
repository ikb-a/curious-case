lemma linear_combination_mod:
  fixes a b c d :: nat
  assumes "a mod m = b" and "c mod m = d"
  shows "(a + k * c) mod m = (b + k * d) mod m" for any integer k