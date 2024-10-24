lemma count_terms_contribution:
  fixes n m :: nat
  assumes "total_terms = n + m"
  shows "total_sum = n * floor_value + m * (floor_value + 1)"