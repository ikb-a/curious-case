lemma neg_k_times:
  fixes x k :: real
  assumes "k \<noteq> 0"
  shows "(-k) * x = - (k * x)"
  using assms by (simp add: algebra_simps)