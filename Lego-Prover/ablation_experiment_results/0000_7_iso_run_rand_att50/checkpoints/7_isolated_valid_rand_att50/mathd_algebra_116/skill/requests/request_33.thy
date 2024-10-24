lemma quadratic_formula:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "2 * x^2 - b * x + c = 0 \<longleftrightarrow> x = (b ± sqrt(b^2 - 4 * a * c)) / (2 * a)"