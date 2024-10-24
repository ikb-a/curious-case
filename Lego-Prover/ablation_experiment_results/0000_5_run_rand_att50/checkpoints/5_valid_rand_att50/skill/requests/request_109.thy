lemma real_properties:
  fixes x y z :: real
  assumes "x = y + z"
  shows "x^2 = y^2 + 2*y*z + z^2"