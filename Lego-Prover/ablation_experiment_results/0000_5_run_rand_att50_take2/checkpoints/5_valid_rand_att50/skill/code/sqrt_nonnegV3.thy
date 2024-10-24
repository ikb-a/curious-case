lemma sqrt_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a ^ 2 = a" using assms by (simp add: real_sqrt_eq_iff)
  then have "sqrt a ^ 2 \<ge> 0" using assms by auto
  moreover have "sqrt a \<ge> 0" using `sqrt a ^ 2 = a` by (auto simp add: power2_eq_iff)
  ultimately show "sqrt a \<ge> 0" by (metis)
qed