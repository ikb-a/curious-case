lemma fraction_combination:
  fixes a b c d :: real
  assumes "d ≠ 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"