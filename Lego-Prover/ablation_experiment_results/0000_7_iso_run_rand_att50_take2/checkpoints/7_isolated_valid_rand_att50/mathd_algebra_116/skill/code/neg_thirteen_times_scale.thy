lemma neg_thirteen_times_scale:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "-13 * x + -13 * y = -13 * (x + y)"
  by (simp add: algebra_simps)