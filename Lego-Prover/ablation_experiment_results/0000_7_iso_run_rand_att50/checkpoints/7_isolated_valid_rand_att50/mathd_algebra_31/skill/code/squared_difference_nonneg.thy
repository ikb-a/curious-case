lemma squared_difference_nonneg:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "(sqrt a - sqrt b)^2 \<ge> 0"
proof -
  have "sqrt a - sqrt b = (sqrt a - sqrt b) * (sqrt a + sqrt b) / (sqrt a + sqrt b)" 
    by (metis Orderings.order_eq_iff add_cancel_left_right add_diff_cancel_left' add_le_same_cancel2 assms(1) assms(2) diff_eq_diff_eq diff_zero divide_eq_0_iff eq_iff_diff_eq_0 nonzero_mult_div_cancel_right real_sqrt_ge_zero real_sqrt_le_0_iff real_sqrt_zero)
  thus ?thesis by (simp add: power2_eq_square)
qed