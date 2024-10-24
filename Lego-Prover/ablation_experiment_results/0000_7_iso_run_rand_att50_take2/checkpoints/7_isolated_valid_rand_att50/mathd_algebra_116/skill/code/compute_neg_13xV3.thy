lemma compute_neg_13x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = - (169 - 13 * sqrt 131) / 4"
proof -
  have "x * 4 = 13 - sqrt 131" using assms by (simp add: field_simps)
  have "-13 * x = -13 * ((13 - sqrt 131) / 4)" using assms by simp
  also have "... = - (13 * (13 - sqrt 131)) / 4" by (simp add: field_simps)
  also have "... = - (169 - 13 * sqrt 131) / 4" by (simp)
  finally show ?thesis by simp
qed