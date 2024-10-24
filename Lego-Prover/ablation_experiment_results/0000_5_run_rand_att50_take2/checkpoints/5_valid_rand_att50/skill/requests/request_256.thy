lemma count_terms_in_sum:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> k = 1..n. f k) = n * average f"