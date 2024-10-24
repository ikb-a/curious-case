lemma case_analysis_terms:
  fixes n m :: nat
  assumes "m + 73 - m = 546"
  shows "m = 546 - 73 * n"
proof -
  have "73 = 546" using assms by simp
  then have "m + 73 - m = 546" by (metis assms)
  then have "73 = 546" by (simp add: assms)
  thus ?thesis using assms by auto
qed