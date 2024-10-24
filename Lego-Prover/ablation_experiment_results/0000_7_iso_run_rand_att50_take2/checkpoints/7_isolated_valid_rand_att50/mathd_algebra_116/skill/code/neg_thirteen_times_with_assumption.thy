lemma neg_thirteen_times_with_assumption:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = - (169 - 13 * sqrt 131) / 4"
proof -
  have "-13 * x = -13 * ((13 - sqrt 131) / 4)" by (simp add: assms)
  also have "... = - (13 * (13 - sqrt 131)) / 4" by (simp add: algebra_simps)
  also have "... = - (169 - 13 * sqrt 131) / 4" by (simp)
  finally show ?thesis by simp
qed