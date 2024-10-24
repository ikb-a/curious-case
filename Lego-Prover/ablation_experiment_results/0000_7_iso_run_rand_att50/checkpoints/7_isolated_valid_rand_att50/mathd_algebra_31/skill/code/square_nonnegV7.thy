lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  moreover have "a * a = b * b" using assms(1) by (metis)
  ultimately show "a^2 = b^2" by simp
qed