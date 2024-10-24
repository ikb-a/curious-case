lemma multi_distrib_gen:
  fixes a b c d e f :: complex
  shows "((a + b) * (c + d)) + ((e + f) * (c + d)) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "((a + b) * (c + d)) + ((e + f) * (c + d)) = (a * (c + d) + b * (c + d)) + (e * (c + d) + f * (c + d))"
    by (auto simp: field_simps)
  also have "... = (a + e) * (c + d) + (b + f) * (c + d)"
    by (simp add: field_simps)
  finally show ?thesis by simp
qed