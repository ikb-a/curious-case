lemma sqrt_limit_unique:
  fixes x y :: real
  assumes "y = sqrt(x + 9)" and "y = 9"
  shows "x = 72"
proof -
  have "y^2 = x + 9" using assms(1) by (metis abs_numeral assms(2) dbl_inc_simps(3) numeral_sqr one_add_one power2_eq_square real_sqrt_abs2 real_sqrt_eq_iff real_sqrt_mult semiring_norm(2) semiring_norm(4) sqr.simps(1) sqr.simps(3))
  then have "9^2 = x + 9" using assms(2) by simp
  have "81 = x + 9" by (metis abs_numeral add.commute add_One_commute assms(1) assms(2) num_double numeral_Bit0 numeral_Bit1 numeral_times_numeral real_sqrt_abs2 real_sqrt_eq_iff semiring_norm(3) semiring_norm(6) sqr.simps(2) sqr.simps(3) sqr_conv_mult)
  then show ?thesis by (simp add: add_diff_cancel)
qed