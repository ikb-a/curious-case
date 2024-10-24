lemma case_analysis_product_two:
  fixes n :: nat
  assumes "n > 0"
  shows "(n - 2) * (n - 1) = 2 \<longrightarrow> (n = 3) \<or> (n = 0)"