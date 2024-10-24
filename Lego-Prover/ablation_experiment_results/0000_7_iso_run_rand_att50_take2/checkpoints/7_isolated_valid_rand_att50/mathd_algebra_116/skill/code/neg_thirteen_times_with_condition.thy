lemma neg_thirteen_times_with_condition:
  fixes x :: real
  assumes "x = 5"
  shows "-13 * x = -65"
proof -
  have "-13 * x = -13 * 5" using assms by simp
  thus ?thesis by simp
qed