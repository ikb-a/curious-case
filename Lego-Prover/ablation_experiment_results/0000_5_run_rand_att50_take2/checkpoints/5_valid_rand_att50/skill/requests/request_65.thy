lemma product_of_consecutive_integers:
  fixes n :: nat
  assumes "n > 0"
  shows "prime ((n - 2) * (n - 1)) ⟷ ((n - 2) * (n - 1) = 2)"