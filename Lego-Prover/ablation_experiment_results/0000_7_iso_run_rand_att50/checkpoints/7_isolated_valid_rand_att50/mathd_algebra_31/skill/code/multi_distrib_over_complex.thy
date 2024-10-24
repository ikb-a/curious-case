lemma multi_distrib_over_complex:
  fixes a b c d e f :: complex
  assumes "a + b = c + d"
  shows "(a + b) * (e + f) = c * e + c * f + d * e + d * f"
proof -
  have "c + d = a + b" using assms by simp
  hence "(a + b) * (e + f) = (c + d) * (e + f)" by simp
  thus ?thesis by (simp add: distrib_left distrib_right)
qed