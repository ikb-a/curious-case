lemma bounded_integer:
  fixes n :: nat
  assumes "n < m"
  shows "∃k. n = k + 1 ∧ k < m - 1"