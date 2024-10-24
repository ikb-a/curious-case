lemma sqrt_non_negativity:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a + sqrt b >= 0"
proof -
  have "sqrt a >= 0" using assms(1) by simp
  moreover have "sqrt b >= 0" using assms(2) by simp
  ultimately show ?thesis by (simp add: add_nonneg_nonneg)
qed