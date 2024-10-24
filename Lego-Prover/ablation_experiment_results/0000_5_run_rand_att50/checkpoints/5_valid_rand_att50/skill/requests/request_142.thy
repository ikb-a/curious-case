lemma case_analysis_modulo_4:
  fixes b :: int
  assumes "b = a mod 4"
  shows "b = 0 \<or> b = 1 \<or> b = 2 \<or> b = 3"