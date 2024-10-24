lemma sqrt_diff_inequality:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
proof -
  have "sqrt (a + b) = sqrt (sqrt a^2 + sqrt b^2)"
    by (metis abs_of_nonneg assms(1) assms(2) one_add_one power2_eq_square real_sqrt_mult_self)
  also have "... \<le> sqrt a + sqrt b" by (metis assms(1) assms(2) calculation sqrt_add_le_add_sqrt)
  finally show ?thesis .
qed