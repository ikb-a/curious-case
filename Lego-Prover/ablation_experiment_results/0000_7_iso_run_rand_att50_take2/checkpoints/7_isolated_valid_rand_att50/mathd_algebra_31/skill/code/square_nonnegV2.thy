lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  moreover have "a = b" by (rule assms(1))
  ultimately show ?thesis 
    using assms(1) by (metis mult_eq_0_iff)
qed