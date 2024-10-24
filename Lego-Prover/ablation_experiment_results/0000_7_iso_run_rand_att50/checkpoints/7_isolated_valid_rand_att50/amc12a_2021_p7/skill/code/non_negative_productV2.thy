lemma non_negative_product:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a * b >= 0"
proof -
  have "a * b = (0 + a) * (0 + b)" by (simp add: algebra_simps)
  also have "... >= 0 * 0" using assms by (simp add: mult_nonneg_nonneg)
  finally show ?thesis by simp
qed