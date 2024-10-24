lemma case_analysis_n:
  fixes n :: nat
  assumes "n > 0"
  shows "(n - 2) * (n - 1) = 2 ⟹ n = 3 ∨ n = 0"