lemma neg_thirteen_times_property:
  fixes x y :: real
  assumes "x = y"
  shows "-13 * x = -13 * y"
  using assms by simp