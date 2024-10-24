lemma consecutive_integers_parity:
  fixes n :: nat
  assumes "n > 0"
  shows "even (n - 1) \<or> even (n - 2)"