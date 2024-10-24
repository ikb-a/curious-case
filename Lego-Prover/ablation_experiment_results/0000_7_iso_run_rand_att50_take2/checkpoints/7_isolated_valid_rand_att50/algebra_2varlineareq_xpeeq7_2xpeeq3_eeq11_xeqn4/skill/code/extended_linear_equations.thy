lemma extended_linear_equations:
  fixes x e :: "complex"
  assumes h0 : "x + e = c"
    and h1 : "2 * x + e = d" 
    and c: "c = 7" and d: "d = 3"
  shows "e = c - x \<and> x = (-4)"
proof -
  have e_eq: "e = c - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (c - x) = d" using e_eq h1 by simp
  have simplified_eq: "x + c = d" using substitution by simp
  have x_value: "x = d - c" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_result: "x = d - c" using c d by simp
  have e_value: "e = c - (d - c)" using e_eq x_result by simp
  then have e_result: "e = 2*c - d" using c d by simp
  show ?thesis using x_result e_result by (metis ab_group_add_class.ab_diff_conv_add_uminus add.commute add_diff_cancel add_diff_cancel_left' add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended c cancel_ab_semigroup_add_class.diff_right_commute d diff_add_cancel diff_add_eq diff_diff_eq diff_diff_eq2 diff_minus_eq_add e_eq group_cancel.sub1 minus_diff_commute minus_diff_eq mult.commute mult_2_right simplified_eq)
qed