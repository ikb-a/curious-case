lemma check_bounds:
  fixes N :: nat
  assumes "N < 50"
  shows "N = 21 ∨ N = 45"