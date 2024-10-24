lemma mod_linear_combination_specialized:
  fixes a b c m n :: nat
  assumes "a mod m = b" "c mod m = 0"
  shows "(a + n * c) mod m = b mod m"
proof -
  have "c mod m = 0" using assms(2) by simp
  then have "(a + n * c) mod m = (a + n * 0) mod m" by (metis add_0_iff assms(1) mod_add_cong mod_mult_left_eq mult.commute mult_delta_left mult_delta_right)
  thus ?thesis using assms(1) by auto
qed