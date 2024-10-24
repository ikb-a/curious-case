lemma congruence_mod_8:
  fixes N :: nat
  assumes "N mod 8 = 5"
  shows "\<exists>k. N = 8 * k + 5"
proof -
  obtain k where "N = 8 * k + (N mod 8)" using assms by (metis add.commute add.right_neutral div_mod_decomp mod_div_trivial mod_eq_nat2E mod_less_eq_dividend mult.commute mult_zero_right)
  hence "N = 8 * k + 5" by (simp add: assms)
  thus "\<exists>k. N = 8 * k + 5" by auto
qed