lemma product_cases:
  fixes n :: nat
  assumes "(n-2)*(n-1) = 2"
  shows "n = 3 ∨ n = 0"