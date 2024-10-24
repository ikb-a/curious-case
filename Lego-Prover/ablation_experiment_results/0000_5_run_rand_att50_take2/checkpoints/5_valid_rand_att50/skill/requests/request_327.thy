lemma substitute_into_polynomial:
  fixes k x :: real
  assumes "p(x) = a*x^2 + b*x + c"
  shows "p((13 - sqrt 131) / 4) = a*((13 - sqrt 131) / 4)^2 + b*((13 - sqrt 131) / 4) + c"