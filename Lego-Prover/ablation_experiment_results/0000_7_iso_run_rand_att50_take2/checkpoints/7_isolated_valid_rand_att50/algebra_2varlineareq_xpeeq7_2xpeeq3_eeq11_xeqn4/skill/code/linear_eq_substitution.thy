lemma linear_eq_substitution:
  fixes x e :: complex
  assumes "x + e = 7" and "2 * x + e = 3"
  shows "e = 7 - x"
proof -
  have "e = 7 - x"
  proof -
    from assms(1) have "e = 7 - x" 
      by (auto simp: field_simps)
    then show ?thesis
      by (simp)
  qed
  moreover have "2 * x + e = 3" 
    using assms(2) by simp
  ultimately show ?thesis 
    by (simp add: assms(1))
qed