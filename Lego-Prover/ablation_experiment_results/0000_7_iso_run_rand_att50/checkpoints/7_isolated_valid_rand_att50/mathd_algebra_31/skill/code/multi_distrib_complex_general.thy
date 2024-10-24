lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  assumes "f = a + b" and "d = c + e"
  shows "f * d = a * c + a * e + b * c + b * e"
proof -
  have "f * d = (a + b) * (c + e)" using assms by auto
  thus ?thesis by (simp add: distrib_left distrib_right)
qed