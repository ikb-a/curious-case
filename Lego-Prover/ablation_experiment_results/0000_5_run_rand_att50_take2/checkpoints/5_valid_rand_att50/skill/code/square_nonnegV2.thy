lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a \<ge> 0" and "b \<ge> 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  moreover have "a = b" using assms(1) by simp
  ultimately show "a^2 = b^2" using assms(1) by (simp add: power2_eq_square)
qed