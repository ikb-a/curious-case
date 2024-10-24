lemma minus_thirteen_x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = -(169 - 13 * sqrt 131) / 4"
proof -
  have "-13 * x = -13 * ((13 - sqrt 131) / 4)" using assms by simp
  also have "... = (-13 * (13 - sqrt 131)) / 4" by (simp add: field_simps)
  also have "... = (-169 + 13 * sqrt 131) / 4" by simp
  finally show "-13 * x = -(169 - 13 * sqrt 131) / 4" by auto
qed