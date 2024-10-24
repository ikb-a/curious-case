lemma quadratic_root_substitution:
  fixes a b c k x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"