lemma linear_combination_mod:
  fixes a b c d m :: nat
  assumes "a mod m = b" and "c mod m = d"
  shows "(k * a + l * c) mod m = (k * b + l * d) mod m" for any integers k, l