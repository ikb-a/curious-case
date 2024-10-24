lemma quadratic_root_relation:
  fixes a b c :: real
  assumes "a > 0"
  shows "2 * x^2 - 13 * x + k = 0 \<Longrightarrow> k = 13^2/(4*a) - (b^2)/(4*a)"