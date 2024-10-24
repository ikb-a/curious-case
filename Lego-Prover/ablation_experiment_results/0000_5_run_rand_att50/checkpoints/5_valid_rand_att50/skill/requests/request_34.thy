lemma manipulate_equation:
  fixes x y :: real
  assumes "x ≠ 0" "y ≠ 0" "x ≠ y"
  shows "x + 2/x = y + 2/y ⟹ x * y = 2"