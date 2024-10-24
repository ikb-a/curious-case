lemma compute_neg_13x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = - (169 - 13 * sqrt 131) / 4"
proof -
  from assms have "13 - sqrt 131 = 4 * x" by simp
  then have "-13 * x = -13 * (13 - sqrt 131) / 4" by (simp add: field_simps)
  also have "... = -(13 * (13 - sqrt 131)) / 4" by (simp add: field_simps)
  also have "... = -(169 - 13 * sqrt 131) / 4" by (simp)
  finally show ?thesis by simp
qed