lemma square_expression_general:
  fixes a b :: "'a::real_normed_field"
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
  by (smt (verit) diff_add_eq power2_diff)