lemma multi_distrib_complex_generalized:
  fixes a b c d e f :: complex
  assumes "x = a + b" "y = c + d"
  shows "x * y = a * c + a * d + b * c + b * d"
proof -
  have "x * y = (a + b) * (c + d)" using assms by simp
  then show ?thesis by (simp add: distrib_left distrib_right)
qed