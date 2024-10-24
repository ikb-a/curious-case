lemma neg_thirteen_times_rearranged:
  fixes x y :: real
  shows "-13 * x + 13 * y = 13 * (y - x)"
  by (simp add: algebra_simps)