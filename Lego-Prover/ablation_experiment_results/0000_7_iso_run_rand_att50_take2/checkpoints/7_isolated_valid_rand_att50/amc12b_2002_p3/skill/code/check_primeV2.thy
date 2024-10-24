lemma check_prime:
  fixes n :: nat
  assumes "n = 3"
  shows "prime (n^2 - 3*n + 2)"
proof -
  have "n^2 - 3*n + 2 = 3^2 - 3*3 + 2" using assms by auto
  then have "n^2 - 3*n + 2 = 9 - 9 + 2" by simp
  then have "n^2 - 3*n + 2 = 2" by simp
  thus "prime (n^2 - 3*n + 2)" by (metis Suc_le_D Suc_n_not_le_n add.commute add_2_eq_Suc add_Suc_shift add_cancel_left_left add_diff_cancel_right' add_leE assms diff_Suc_Suc diff_diff_cancel diff_mult_distrib diff_self_eq_0 full_nat_induct le_add_diff_inverse2 le_zero_eq minus_nat.diff_0 mult.commute mult_eq_0_iff nat_arith.suc1 nat_le_linear not_less_eq_eq not_prime_0 numeral_2_eq_2 numeral_3_eq_3 power2_eq_square two_is_prime_nat)
qed