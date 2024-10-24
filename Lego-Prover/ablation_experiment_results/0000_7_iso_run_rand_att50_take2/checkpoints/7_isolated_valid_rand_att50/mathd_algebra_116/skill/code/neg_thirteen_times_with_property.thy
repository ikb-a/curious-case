lemma neg_thirteen_times_with_property:
  fixes x y z :: real
  assumes "x + y = z"
  shows "-13 * z = -13 * x + -13 * y"
proof -
  have "-13 * z = -13 * (x + y)" using assms by simp
  also have "... = -13 * x + -13 * y" by (simp add: neg_thirteen_times_generalized)
  finally show ?thesis .
qed