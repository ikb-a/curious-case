lemma nat_inequality:
  fixes a b :: nat
  assumes "a < b"
  shows "a + 1 \<le> b"
proof -
  have "b = a + 1 + (b - (a + 1))" by (metis add.commute add_diff_inverse_nat assms less_diff_conv2 less_le_not_le less_one linorder_le_less_linear nle_le verit_comp_simplify1(1) zero_less_diff zero_less_iff_neq_zero)
  also have "... \<ge> a + 1" by auto
  finally show ?thesis by simp
qed