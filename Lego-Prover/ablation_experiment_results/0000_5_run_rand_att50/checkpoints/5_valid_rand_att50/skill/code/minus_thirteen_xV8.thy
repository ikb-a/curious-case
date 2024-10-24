lemma minus_thirteen_x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = -(169 - 13 * sqrt 131) / 4"
proof -
  from assms have "x * 4 = 13 - sqrt 131" by simp
  then have "-13 * x * 4 = -13 * (13 - sqrt 131)" by (simp add: algebra_simps)
  hence "-13 * x * 4 = -169 + 13 * sqrt 131" by simp
  then have "-13 * x = (-169 + 13 * sqrt 131) / 4" by (simp add: field_simps)
  thus ?thesis by simp
qed