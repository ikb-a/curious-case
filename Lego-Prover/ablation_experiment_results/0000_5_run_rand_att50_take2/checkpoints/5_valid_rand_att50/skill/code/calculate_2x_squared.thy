lemma calculate_2x_squared:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 = (600 - 52 * sqrt 131) / 16"
proof -
  have "x^2 = ((13 - sqrt 131) / 4)^2" using assms by blast
  then have "x^2 = (13 - sqrt 131)^2 / 16" by (simp add: power_divide)
  have "(13 - sqrt 131)^2 = 13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2" 
    by (smt (verit) diff_add_eq power2_diff)
  then have "(13 - sqrt 131)^2 = 169 - 26 * sqrt 131 + 131" 
    by simp
  then have "(13 - sqrt 131)^2 = 300 - 26 * sqrt 131" by simp
  have "x^2 = (300 - 26 * sqrt 131) / 16" using `x^2 = (13 - sqrt 131)^2 / 16` by (metis \<open>(13 - sqrt 131)\<^sup>2 = 300 - 26 * sqrt 131\<close>)
  have "2 * x^2 = 2 * ((300 - 26 * sqrt 131) / 16)" by (metis \<open>x\<^sup>2 = (300 - 26 * sqrt 131) / 16\<close>)
  then have "2 * x^2 = (600 - 52 * sqrt 131) / 16" by (simp add: algebra_simps)
  thus "2 * x^2 = (600 - 52 * sqrt 131) / 16" by simp
qed