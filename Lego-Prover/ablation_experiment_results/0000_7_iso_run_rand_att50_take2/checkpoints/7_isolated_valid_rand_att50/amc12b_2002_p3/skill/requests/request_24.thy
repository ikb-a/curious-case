lemma unique_solution_product:
  fixes n :: nat
  assumes "n > 0" "n - 2 > 0" "n - 1 > 0"
  shows "∃!n. (n - 2)(n - 1) = 2"