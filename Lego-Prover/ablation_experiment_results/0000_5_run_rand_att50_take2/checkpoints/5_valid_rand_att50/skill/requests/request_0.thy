lemma linear_equation_solver:
  fixes x e :: complex
  assumes "x + e = a" and "2 * x + e = b"
  shows "e = b - 2 * a + a" and "x = a - e"