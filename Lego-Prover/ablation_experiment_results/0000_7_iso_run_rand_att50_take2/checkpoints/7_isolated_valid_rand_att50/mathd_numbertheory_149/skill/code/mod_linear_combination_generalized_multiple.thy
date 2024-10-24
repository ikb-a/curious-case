lemma mod_linear_combination_generalized_multiple:
  fixes a b c d m n :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + n * c) mod m = (b + n * d) mod m"
proof -
  have "(a + n * c) mod m = ((a mod m) + (n * (c mod m))) mod m"
    by (smt (verit) mod_add_cong mod_mod_trivial mod_mult_right_eq)
  also have "... = (b + n * d) mod m"
    using assms by auto
  finally show ?thesis by simp
qed