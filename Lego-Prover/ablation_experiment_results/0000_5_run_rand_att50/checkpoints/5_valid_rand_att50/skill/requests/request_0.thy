lemma solve_linear_equations:
  fixes x e :: complex
  assumes "x + e = 7" 
    and "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"