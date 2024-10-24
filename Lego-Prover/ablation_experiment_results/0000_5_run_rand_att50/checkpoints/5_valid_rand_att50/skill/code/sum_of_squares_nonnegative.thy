lemma sum_of_squares_nonnegative:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 = a * a" by sos
  have "b^2 = b * b" by sos
  then have "a^2 + b^2 = a * a + b * b" by sos
  moreover have "a * a \<ge> 0" by (simp add: mult_nonneg_nonneg)
  moreover have "b * b \<ge> 0" by (simp add: mult_nonneg_nonneg)
  ultimately show ?thesis by (simp add: add_nonneg_nonneg)
qed