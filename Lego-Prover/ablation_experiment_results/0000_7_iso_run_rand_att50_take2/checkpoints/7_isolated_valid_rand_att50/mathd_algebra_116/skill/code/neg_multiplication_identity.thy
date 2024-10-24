lemma neg_multiplication_identity:
  fixes x :: real
  shows "-13 * x + 13 * x = 0"
proof -
  have "-13 * x + 13 * x = 0" by (simp add: algebra_simps)
  thus ?thesis by simp
qed