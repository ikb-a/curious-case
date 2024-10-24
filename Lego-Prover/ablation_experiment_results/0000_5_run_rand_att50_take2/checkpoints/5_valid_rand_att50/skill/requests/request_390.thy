lemma unique_positive_solution:
  fixes n :: nat
  assumes "n > 0" "f n = 0"
  shows "n = k" for some fixed k