lemma sqrt_limit:
  fixes x :: real
  assumes "9 = sqrt(x + 9)"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  have "81 = x + 9" by (metis \<open>9\<^sup>2 = x + 9\<close> abs_numeral add.commute add.left_commute add_One_commute num_double numeral_Bit0 numeral_Bit1 numeral_times_numeral power2_eq_square real_sqrt_abs2 real_sqrt_mult_self semiring_norm(3) semiring_norm(6) sqr.simps(2) sqr.simps(3) sqr_conv_mult)
  have "x = 81 - 9" by (metis \<open>81 = x + 9\<close> add_diff_cancel semiring_norm(3) semiring_norm(5))
  then show ?thesis by auto
qed