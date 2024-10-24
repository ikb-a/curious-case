lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  then have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  ultimately show "a^2 = b^2" by (simp add: assms(1))
qed