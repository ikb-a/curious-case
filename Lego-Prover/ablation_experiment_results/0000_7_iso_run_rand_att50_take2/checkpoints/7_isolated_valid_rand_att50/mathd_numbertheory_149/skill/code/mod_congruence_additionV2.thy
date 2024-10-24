lemma mod_congruence_addition:
  fixes a b c m :: nat
  assumes "a mod m = b mod m"
  shows "(a + c) mod m = (b + c) mod m"
  using assms
  by (metis mod_add_cong)