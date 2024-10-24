lemma sqrt_continuity:
  fixes a :: real
  assumes "a >= 0"
  shows "continuous (at a) sqrt"