lemma quadratic_formula:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "(-b ± sqrt (b^2 - 4*a*c)) / (2*a) = (if b^2 - 4*a*c < 0 then None else Some ((-b + sqrt (b^2 - 4*a*c)) / (2*a), (-b - sqrt (b^2 - 4*a*c)) / (2*a)))"