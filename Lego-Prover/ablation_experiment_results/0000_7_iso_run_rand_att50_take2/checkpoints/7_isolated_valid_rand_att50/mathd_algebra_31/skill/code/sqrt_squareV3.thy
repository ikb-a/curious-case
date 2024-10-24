lemma sqrt_square:
  fixes a :: real
  assumes "0 \<le> a"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a \<ge> 0" using assms by auto
  then have "sqrt a * sqrt a = (sqrt a) ^ 2" by simp
  also have "... = a" using assms by (simp add: sqrt_def)
  finally show ?thesis by simp
qed