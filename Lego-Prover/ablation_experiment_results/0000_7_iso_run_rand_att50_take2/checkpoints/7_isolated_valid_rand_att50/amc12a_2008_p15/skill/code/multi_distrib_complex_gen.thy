lemma multi_distrib_complex_gen:
  fixes z1 z2 z3 z4 :: complex
  assumes "z1 = a + b" and "z2 = c + d"
  shows "z1 * z2 = a * c + a * d + b * c + b * d"
proof -
  have "z1 * z2 = (a + b) * (c + d)" using assms by simp
  then show ?thesis by (simp add: distrib_left distrib_right)
qed