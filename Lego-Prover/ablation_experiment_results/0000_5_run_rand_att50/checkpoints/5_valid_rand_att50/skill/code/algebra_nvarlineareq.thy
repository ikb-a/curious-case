theorem algebra_nvarlineareq:
  fixes x e :: "complex list"
  assumes h0 : "x ! 0 + e ! 0 = 7"
    and h1 : "2 * x ! 0 + e ! 0 = 3"
  shows "e ! 0 = 11 \<and> x ! 0 = (-4)"
proof -
  have e_expr: "e ! 0 = 7 - x ! 0" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x ! 0 + (7 - x ! 0) = 3" using e_expr h1 by simp
  have eq_simplified: "x ! 0 + 7 = 3" using eq_substituted by simp
  have x_value: "x ! 0 = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x ! 0 = -4" by simp
  have e_value: "e ! 0 = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e ! 0 = 7 + 4" using e_value by simp
  then show ?thesis using x_value_final by auto
qed