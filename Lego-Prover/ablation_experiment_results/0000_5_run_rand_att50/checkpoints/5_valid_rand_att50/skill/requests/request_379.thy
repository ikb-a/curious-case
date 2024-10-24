lemma expand_quadratic:
  fixes a b c :: real
  shows "a * (x^2) + b * x + c = 0 \<longleftrightarrow> (x = (-b + sqrt(b^2 - 4*a*c)) / (2*a) \<or> x = (-b - sqrt(b^2 - 4*a*c)) / (2*a))"