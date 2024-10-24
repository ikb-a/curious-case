lemma multi_distrib_complex_extended:
  fixes a b c d e f :: complex
  shows "(a + b + c) * (d + e + f) = a * d + a * e + a * f + b * d + b * e + b * f + c * d + c * e + c * f"
proof -
  have "(a + b + c) * (d + e + f) = (a + b) * (d + e + f) + c * (d + e + f)" by (simp add: algebra_simps)
  also have "... = (a + b) * d + (a + b) * e + (a + b) * f + c * d + c * e + c * f" by (auto simp: field_simps)
  also have "... = (a * d + b * d) + (a * e + b * e) + (a * f + b * f) + c * d + c * e + c * f" by (auto simp: field_simps)
  finally show ?thesis by simp
qed