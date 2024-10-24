lemma mod_linear_combination:
  fixes a b c d m n :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + k * c) mod m = (b + k * d) mod m"
proof -
  have "(a + k * c) mod m = ((a mod m) + (k * (c mod m))) mod m"
    by (smt (verit) mod_add_cong mod_mod_trivial mod_mult_right_eq)
  also have "... = (b + k * d) mod m"
    using assms by auto
  finally show ?thesis by simp
qed