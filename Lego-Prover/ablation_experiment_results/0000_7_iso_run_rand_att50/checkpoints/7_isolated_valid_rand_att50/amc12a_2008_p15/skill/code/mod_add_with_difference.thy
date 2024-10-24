lemma mod_add_with_difference:
  fixes a b c m :: nat
  assumes "a mod m = c" "b mod m = d"
  shows "(a + b) mod m = (c + d) mod m"
  using assms by (metis mod_add_cong mod_add_eq)