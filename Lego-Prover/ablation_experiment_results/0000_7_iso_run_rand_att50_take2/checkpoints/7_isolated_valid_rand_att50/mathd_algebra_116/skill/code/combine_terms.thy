lemma combine_terms:
  fixes a b c d e f :: real
  assumes "a = b / c" "d = e / f" "c \<noteq> 0" "f \<noteq> 0"
  shows "a + d = (b * f + e * c) / (c * f)"
proof -
  have "a + d = (b / c) + (e / f)"
    using assms(1) assms(2) by simp
  also have "... = (b * f) / (c * f) + (e * c) / (c * f)"
    by (simp add: assms(3) assms(4) field_simps)
  also have "... = (b * f + e * c) / (c * f)"
    by (simp add: field_simps)
  finally show ?thesis .
qed