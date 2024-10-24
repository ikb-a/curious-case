lemma linear_eq_substitution:
  fixes x e :: complex
  assumes "x + e = 7" and "2 * x + e = 3"
  shows "e = 7 - x"