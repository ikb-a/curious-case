lemma substitute_x_in_quadratic:
  fixes k x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 - 13 * x = 2 * ((13 - sqrt 131) / 4)^2 - 13 * ((13 - sqrt 131) / 4)"
proof -
  have "x^2 = ((13 - sqrt 131) / 4)^2" using assms by blast
  then have "2 * x^2 = 2 * ((13 - sqrt 131) ^ 2 / 16)" by (simp add: field_simps)
  also have "... = (2 * (13 - sqrt 131) ^ 2) / 16" by (simp add: field_simps)
  have "(13 - sqrt 131)^2 = 169 - 2 * 13 * sqrt 131 + 131" 
    by (simp add: power2_eq_square algebra_simps)
  hence "(13 - sqrt 131)^2 = 300 - 26 * sqrt 131" by simp
  have "2 * (13 - sqrt 131)^2 = 2 * (300 - 26 * sqrt 131)" by (metis \<open>(13 - sqrt 131)\<^sup>2 = 300 - 26 * sqrt 131\<close>)
  then have "2 * (13 - sqrt 131)^2 = 600 - 52 * sqrt 131" by simp
  have "13 * ((13 - sqrt 131) / 4) = (13 * (13 - sqrt 131)) / 4" by (simp add: field_simps)
  then have "13 * (13 - sqrt 131) = 169 - 13 * sqrt 131" by simp
  thus ?thesis
    by (metis assms)
qed