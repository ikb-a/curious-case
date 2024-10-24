lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  assumes "a + b = e" "c + d = f"
  shows "(a + b) * (c + d) = e * f"
proof -
  have "(a + b) * (c + d) = a * c + a * d + b * c + b * d" 
    by (simp add: distrib_left distrib_right)
  also have "... = (a + b) * (c + d)" by (auto simp: field_simps)
  finally show ?thesis by (metis assms(1) assms(2))
qed