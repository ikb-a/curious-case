lemma bound_check:
  fixes n :: nat
  assumes "n < k"
  shows "n + c < k + c"