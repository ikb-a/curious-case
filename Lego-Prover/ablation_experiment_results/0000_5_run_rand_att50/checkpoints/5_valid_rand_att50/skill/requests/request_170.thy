lemma count_terms:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> k \<in>{0..n-1}. f k) = n * average f"