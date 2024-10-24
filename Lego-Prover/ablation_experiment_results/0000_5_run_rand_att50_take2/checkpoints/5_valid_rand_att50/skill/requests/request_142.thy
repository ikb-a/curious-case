lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"