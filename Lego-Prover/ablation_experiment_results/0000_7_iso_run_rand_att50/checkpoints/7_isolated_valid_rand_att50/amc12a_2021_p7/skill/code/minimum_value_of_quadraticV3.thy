lemma minimum_value_of_quadratic:
  fixes a b c :: real
  assumes "a > 0"
  shows "a * (x - b)^2 + c >= c"
proof -
  have "a * (x - b)^2 >= 0" 
    by (metis assms mult_eq_0_iff mult_less_cancel_right mult_nonneg_nonneg not_square_less_zero power2_eq_square verit_comp_simplify1(3) zero_le_square)
  then have "a * (x - b)^2 + c >= 0 + c" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis 
    by simp
qed