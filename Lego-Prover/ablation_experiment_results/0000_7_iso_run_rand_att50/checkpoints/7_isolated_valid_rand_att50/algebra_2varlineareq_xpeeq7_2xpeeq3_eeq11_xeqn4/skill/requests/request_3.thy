lemma solve_linear_system:
  fixes x e :: complex
  assumes "x + e = 7" "2 * x + e = 3"
  shows "e = 11 ∧ x = -4"