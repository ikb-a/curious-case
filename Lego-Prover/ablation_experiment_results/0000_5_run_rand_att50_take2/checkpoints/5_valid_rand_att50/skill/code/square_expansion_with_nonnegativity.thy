lemma square_expansion_with_nonnegativity:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "(x - y)^2 = x^2 - 2*x*y + y^2"
  by sos