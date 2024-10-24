lemma sqrt_diff:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) - sqrt(y) = (x - y) / (sqrt(x) + sqrt(y))"
proof -
  have "sqrt(x) - sqrt(y) = (sqrt(x) + sqrt(y)) * (sqrt(x) - sqrt(y)) / (sqrt(x) + sqrt(y))"
    by (metis add.left_cancel add_cancel_right_right add_le_same_cancel2 assms(1) assms(2) cancel_comm_monoid_add_class.diff_cancel dual_order.eq_iff eq_divide_eq mult.commute nonzero_mult_div_cancel_right real_sqrt_eq_zero_cancel_iff real_sqrt_ge_0_iff real_sqrt_le_0_iff real_sqrt_zero)
  have "sqrt(x) - sqrt(y) = (x - y) / (sqrt(x) + sqrt(y))" 
  proof (cases "x = y")
    case True
    then show ?thesis by simp
  next
    case False
    then have "sqrt(x) + sqrt(y) > 0" using assms by (metis add.commute add_cancel_right_left add_nonneg_pos dual_order.strict_iff_order real_sqrt_eq_zero_cancel_iff real_sqrt_ge_zero real_sqrt_gt_zero)
    then show ?thesis 
      using assms by (auto simp: field_simps)
  qed
  thus ?thesis by simp
qed