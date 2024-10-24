lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0"
  shows "∃x. x mod m = a ⟹ (∃k. x = a + k * m)"