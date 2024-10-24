lemma combine_terms:
  fixes a b c d e f :: real
  assumes "c \<noteq> 0" "f \<noteq> 0" "a = b / c" "d = e / f"
  shows "a + d = (b * f + e * c) / (c * f)"
proof -
  have "a + d = (b / c) + (e / f)" using assms(3) assms(4) by simp
  also have "... = (b * f) / (c * f) + (e * c) / (c * f)" 
    by (simp add: assms(1) assms(2) field_simps)
  also have "... = (b * f + e * c) / (c * f)" 
    by (simp add: field_simps)
  finally show ?thesis .
qed