lemma sum_terms_count_n:
  fixes n :: nat
  assumes "n = m - k + 1"
  shows "n = (m - k + 1)"
  using assms by simp