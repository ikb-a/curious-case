lemma mod_linear_combination_specific:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod m = d" "n > 0"
  shows "(a + n * c) mod m = (b + n * d) mod m"
  using mod_linear_combination_generalized[of a b c d m n] by (smt (verit) assms(1) assms(2) mod_linear_combination_generalized)