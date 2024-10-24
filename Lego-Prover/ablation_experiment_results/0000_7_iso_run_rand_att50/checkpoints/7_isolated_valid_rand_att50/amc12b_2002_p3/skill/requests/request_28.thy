lemma parity_of_factors:
  fixes n :: nat
  assumes "n > 0"
  shows "even (n - 1) \<or> even (n - 2)"