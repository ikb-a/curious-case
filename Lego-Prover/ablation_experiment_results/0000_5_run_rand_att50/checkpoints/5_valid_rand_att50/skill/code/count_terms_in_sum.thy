lemma count_terms_in_sum:
  fixes n m :: nat
  assumes "m + n = total_terms"
  shows "m + n = total_terms"
proof -
  have "m + n = total_terms" using assms by simp
  thus ?thesis by simp
qed