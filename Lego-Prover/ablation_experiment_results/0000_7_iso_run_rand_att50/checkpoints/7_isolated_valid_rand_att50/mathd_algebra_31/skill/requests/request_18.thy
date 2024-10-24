lemma square_root_equation:
  fixes x y :: real
  assumes "y = sqrt (x + z)"
  shows "y^2 = x + z"