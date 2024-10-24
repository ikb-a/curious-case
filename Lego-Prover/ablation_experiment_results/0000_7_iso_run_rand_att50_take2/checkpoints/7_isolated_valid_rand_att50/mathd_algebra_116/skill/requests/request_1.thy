lemma quadratic_root_property:
  fixes a b c :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "x = (-b ± sqrt(b^2 - 4ac)) / (2a) \<longrightarrow> c = a * x^2 + b * x"