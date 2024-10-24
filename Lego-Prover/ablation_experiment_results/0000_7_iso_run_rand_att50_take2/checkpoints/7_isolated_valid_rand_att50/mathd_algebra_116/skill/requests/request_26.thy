lemma combine_terms:
  fixes a b c d :: real
  assumes "a = b / c" "d = e / f"
  shows "a + d = (b * f + e * c) / (c * f)"