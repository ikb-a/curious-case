lemma neg_thirteen_times_sum:
  fixes x y :: real
  shows "-13 * (x + y) = -13 * x + -13 * y"
  by (simp add: distrib_left)