lemma unique_solution:
  fixes n :: nat
  assumes "n > 0" 
    and "n^2 - 3n + 2 = 2"
  shows "n = 3"