lemma square_difference_formula:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
  by (simp add: power2_diff)