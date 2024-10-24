lemma square_root_manipulation:
  fixes x y :: real
  assumes "y = sqrt (x + y)"
  shows "x = y^2 - y"