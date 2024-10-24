lemma sqrt_manipulation:
  fixes a b :: real
  assumes "a = 13 - sqrt 131"
  shows "a^2 = 169 - 26 * sqrt 131 + 131"
proof -
  have "a^2 = (13 - sqrt 131)^2" using assms by simp
  then have "a^2 = 13^2 - 2 * 13 * sqrt 131 + (sqrt 131)^2" 
    by (simp add: power2_diff)
  then have "a^2 = 169 - 26 * sqrt 131 + 131" 
    by auto
  thus ?thesis by simp
qed