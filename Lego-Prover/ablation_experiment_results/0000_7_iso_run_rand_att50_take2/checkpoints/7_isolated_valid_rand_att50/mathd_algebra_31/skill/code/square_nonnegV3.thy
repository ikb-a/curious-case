lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  moreover have "a * a = b * b" using assms(1) by (metis assms(1) power2_eq_square)
  ultimately show ?thesis by simp
qed