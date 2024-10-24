lemma case_analysis_positive_integers:
  fixes n :: nat
  assumes "n > 0"
  shows "n = 3 \<or> n = 4 \<or> n = 5 \<or> ... \<Longrightarrow> (n^2 - 3*n + 2) = 2"
  by (metis assms)