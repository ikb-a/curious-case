lemma mod_linear_combination_generalized:
  fixes a b c d m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  have "(a + c) mod m = (b + d) mod m"
    using assms by (metis mod_add_cong mod_add_eq)
  thus ?thesis by simp
qed