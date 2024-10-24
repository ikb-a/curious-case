lemma case_analysis_on_n:
  fixes n :: nat
  assumes "n > 0"
  shows "n = 1 \<or> n = 2 \<or> n = 3 \<or> n > 3"