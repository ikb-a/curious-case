lemma simplify_square_root:
  fixes a b :: real
  assumes "a = (13 - sqrt 131) / 4"
  shows "a^2 = (300 - 26 * sqrt 131) / 16"
proof -
  have "a^2 = ((13 - sqrt 131) / 4)^2"
    using assms by blast
  also have "... = (13 - sqrt 131)^2 / 16"
    by (simp add: field_simps)
  have "(13 - sqrt 131)^2 = 13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2"
    by (smt (verit) diff_add_eq power2_diff)
  then have "(13 - sqrt 131)^2 = 169 - 26 * sqrt 131 + 131"
    by simp
  then have "(13 - sqrt 131)^2 = 300 - 26 * sqrt 131"
    by simp
  ultimately have "a^2 = (300 - 26 * sqrt 131) / 16"
    by (simp add: field_simps)
  thus ?thesis
    by simp
qed