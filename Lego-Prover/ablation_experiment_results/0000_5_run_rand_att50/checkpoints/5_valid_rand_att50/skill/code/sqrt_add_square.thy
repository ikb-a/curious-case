lemma sqrt_add_square:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
proof -
  have "sqrt (a + b) \<le> sqrt (a + b) + 0" by auto
  also have "... \<le> sqrt a + sqrt b" using assms by (metis add_cancel_right_right sqrt_add_le_add_sqrt)
  finally show ?thesis .
qed