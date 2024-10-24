lemma quadratic_formula:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "x = (-b ± sqrt(b^2 - 4ac)) / (2a) ⟹ 2a * x^2 + b * x + c = 0"