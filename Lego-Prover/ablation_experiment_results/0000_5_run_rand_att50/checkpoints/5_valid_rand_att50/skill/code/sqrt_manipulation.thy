lemma sqrt_manipulation:
  fixes a b :: real
  assumes "a = 13 - sqrt 131"
  shows "a^2 = 169 - 26 * sqrt 131 + 131"
proof -
  have "a^2 = (13 - sqrt 131)^2"
    using assms by simp
  also have "... = 13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2"
    by (smt (verit) diff_add_eq power2_diff)
  also have "... = 169 - 26 * sqrt 131 + 131"
    by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed