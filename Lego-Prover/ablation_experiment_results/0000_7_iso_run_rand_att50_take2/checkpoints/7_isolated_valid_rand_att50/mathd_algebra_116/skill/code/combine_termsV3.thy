lemma combine_terms:
  fixes a b c d e f :: real
  assumes "c \<noteq> 0" "f \<noteq> 0" "a = b / c" "d = e / f"
  shows "a + d = (b * f + e * c) / (c * f)"
proof -
  from assms(3) have "a = b / c" by simp
  from assms(4) have "d = e / f" by simp
  have "a + d = (b / c) + (e / f)" by (simp add: assms(3) assms(4))
  also have "... = (b * f) / (c * f) + (e * c) / (c * f)" by (simp add: assms(1) assms(2) field_simps)
  also have "... = (b * f + e * c) / (c * f)" by (auto simp: field_simps)
  finally show ?thesis .
qed