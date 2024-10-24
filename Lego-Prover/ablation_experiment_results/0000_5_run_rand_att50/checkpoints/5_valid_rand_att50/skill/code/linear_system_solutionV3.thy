theorem linear_system_solution:
  fixes x e :: complex
  assumes h0 : "x + e = a"  
    and h1 : "2 * x + e = b"  
  shows "e = a - x \<and> x = (b - a) / 1"  
proof -
  have e_expr: "e = a - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (a - x) = b" using e_expr h1 by simp
  have eq_simplified: "x + a = b" using eq_substituted by simp
  have x_value: "x = b - a" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_value_final: "x = (b - a)" by simp
  have e_value: "e = a - (b - a)" using e_expr x_value_final by simp
  then show ?thesis using x_value_final by auto
qed