lemma substitution_in_equation:
  fixes x e a b :: complex
  assumes "x + e = a" and "e = a - x"
  shows "2 * x + e = 2 * x + (a - x)"