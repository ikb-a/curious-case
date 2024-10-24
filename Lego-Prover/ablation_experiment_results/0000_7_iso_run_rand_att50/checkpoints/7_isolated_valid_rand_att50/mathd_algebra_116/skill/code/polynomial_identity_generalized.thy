lemma polynomial_identity_generalized:
  fixes a b c d :: complex
  shows "(a + b + c + d)^2 = a^2 + b^2 + c^2 + d^2 + 2*(a*b + a*c + a*d + b*c + b*d + c*d)"
proof -
  have "(a + b + c + d)^2 = (a + b)^2 + (c + d)^2 + 2*(a + b)*(c + d)" 
    by (metis group_cancel.add1 numeral_2_eq_2 power2_sum)
  also have "... = (a^2 + 2*a*b + b^2) + (c^2 + 2*c*d + d^2) + 2*(a + b)*(c + d)"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute add.right_cancel add_right_cancel is_num_normalize(1) power2_eq_square power2_sum)
  also have "... = a^2 + b^2 + c^2 + d^2 + 2*(a*b + c*d + (a + b)*(c + d))"
    by auto
  also have "... = a^2 + b^2 + c^2 + d^2 + 2*(a*b + a*c + a*d + b*c + b*d + c*d)"
    by (auto simp: field_simps)
  finally show ?thesis .
qed