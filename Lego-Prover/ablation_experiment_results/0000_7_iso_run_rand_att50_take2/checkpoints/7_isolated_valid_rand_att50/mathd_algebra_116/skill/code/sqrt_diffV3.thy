lemma sqrt_diff:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) - sqrt(y) = (x - y) / (sqrt(x) + sqrt(y))"
proof -
  have "sqrt(x) - sqrt(y) = (sqrt(x) - sqrt(y)) * (sqrt(x) + sqrt(y)) / (sqrt(x) + sqrt(y))"
    using assms by (metis add_cancel_left_right add_le_same_cancel1 cancel_comm_monoid_add_class.diff_cancel divide_eq_eq nle_le nonzero_mult_div_cancel_right real_sqrt_eq_zero_cancel_iff real_sqrt_ge_0_iff real_sqrt_le_0_iff sqrt_add_le_add_sqrt)
  also have "... = (x - y) / (sqrt(x) + sqrt(y))"
    using assms by (auto simp: field_simps)
  finally show ?thesis .
qed