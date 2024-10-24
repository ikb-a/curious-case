lemma algebraic_manipulation:
  fixes x y :: nat
  assumes "x + y < z"
  shows "y < z - x"