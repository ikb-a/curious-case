lemma square_expression:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 = (600 - 52 * sqrt 131) / 16"
proof -
  have "x^2 = ((13 - sqrt 131) / 4)^2" using assms by blast
  then have "2 * x^2 = 2 * ((13 - sqrt 131) ^ 2 / 16)" by (auto simp: field_simps)
  also have "... = (2 * (13 - sqrt 131) ^ 2) / 16" by (simp add: field_simps)
  have "(13 - sqrt 131)^2 = 169 - 2 * 13 * sqrt 131 + 131" 
    by (simp add: power2_eq_square algebra_simps)
  hence "(13 - sqrt 131)^2 = 300 - 26 * sqrt 131" by simp
  have "2 * (13 - sqrt 131)^2 = 2 * (300 - 26 * sqrt 131)" by (metis \<open>(13 - sqrt 131)\<^sup>2 = 300 - 26 * sqrt 131\<close>)
  then have "2 * (13 - sqrt 131)^2 = 600 - 52 * sqrt 131" by simp
  thus "2 * x^2 = (600 - 52 * sqrt 131) / 16" 
    by (metis \<open>2 * ((13 - sqrt 131)\<^sup>2 / 16) = 2 * (13 - sqrt 131)\<^sup>2 / 16\<close> calculation comm_semiring_class.distrib distrib_left mult.commute mult_2 power2_eq_square)
qed