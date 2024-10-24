lemma substitution:
  fixes x e :: complex
  assumes "e = 7 - x"
  shows "2 * x + e = 3 ⟷ 2 * x + (7 - x) = 3"