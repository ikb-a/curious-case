lemma multi_distrib_complex_advanced:
  fixes a b c d e f :: complex
  assumes "c + d \<noteq> 0" 
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "((a + b) + (e + f)) * (c + d) = (a + e + b + f) * (c + d)"
    by (simp add: algebra_simps)
  also have "... = (a + e) * (c + d) + (b + f) * (c + d)"
    using assms by (simp add: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed