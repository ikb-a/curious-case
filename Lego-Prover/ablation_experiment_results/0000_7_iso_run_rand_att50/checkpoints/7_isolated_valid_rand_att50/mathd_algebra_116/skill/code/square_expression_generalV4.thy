lemma square_expression_general:
  fixes a b :: "'a::field"
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b) * (a - b) = a * a - b * a - a * b + b * b" by (auto simp: field_simps)
  then show ?thesis by (smt (verit) diff_add_eq_diff_diff_swap distrib_right mult.commute mult_2 power2_eq_square)
qed