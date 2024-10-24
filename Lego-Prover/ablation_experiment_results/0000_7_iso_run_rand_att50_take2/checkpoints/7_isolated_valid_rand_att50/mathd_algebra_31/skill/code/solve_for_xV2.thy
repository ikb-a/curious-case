lemma solve_for_x:
  fixes x :: real
  shows "9 = sqrt(x + 9) \<Longrightarrow> x = 72"
proof -
  assume "9 = sqrt(x + 9)"
  then have "9^2 = x + 9" 
    by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  moreover have "81 = x + 9" 
    by (metis abs_numeral add.commute add.left_commute add_One_commute calculation num_double numeral_Bit0 numeral_Bit1 numeral_times_numeral power2_eq_square real_sqrt_abs2 real_sqrt_mult_self semiring_norm(3) semiring_norm(6) sqr.simps(2) sqr.simps(3) sqr_conv_mult)
  ultimately have "x = 81 - 9" 
    by simp
  thus "x = 72" 
    by simp
qed