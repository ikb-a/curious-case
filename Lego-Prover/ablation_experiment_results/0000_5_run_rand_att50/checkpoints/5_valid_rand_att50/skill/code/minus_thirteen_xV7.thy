lemma minus_thirteen_x:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "-13 * x = -(169 - 13 * sqrt 131) / 4"
proof -
  have "(-13 * x) = -13 * ((13 - sqrt 131) / 4)" using assms by simp
  also have "... = (-13 * (13 - sqrt 131)) / 4" by (simp add: algebra_simps)
  then have "... = (-169 + 13 * sqrt 131) / 4" by (simp add: distrib_right)
  then show "-13 * x = -(169 - 13 * sqrt 131) / 4" by (metis \<open>- 13 * ((13 - sqrt 131) / 4) = - 13 * (13 - sqrt 131) / 4\<close> assms dbl_inc_simps(3) dbl_inc_simps(5) dbl_simps(3) dbl_simps(5) minus_diff_eq mult.commute uminus_add_conv_diff)
qed