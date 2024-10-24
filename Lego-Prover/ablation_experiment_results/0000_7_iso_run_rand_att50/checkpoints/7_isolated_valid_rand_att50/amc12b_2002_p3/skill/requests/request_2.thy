lemma parity_analysis:
  fixes n :: nat
  assumes "n > 0"
  shows "(n - 1) mod 2 ≠ (n - 2) mod 2"