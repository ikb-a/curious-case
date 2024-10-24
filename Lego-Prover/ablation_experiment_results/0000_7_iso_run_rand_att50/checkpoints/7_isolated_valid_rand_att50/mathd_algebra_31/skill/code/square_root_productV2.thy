lemma square_root_product:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
  by (metis real_sqrt_mult)