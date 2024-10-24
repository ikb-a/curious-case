lemma algebra_2varlineareq_xpeeq7_2xpeeq3:
  fixes x e :: complex
  assumes h0: "x + e = 7" 
    and h1: "2 * x + e = 3"
  shows "e = 11"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel minus_equation_iff neg_numeral_neq_numeral numeral_times_minus_swap square_eq_iff uminus_add_conv_diff)
  have e_value: "e = 7 - x" using e_expr by simp
  thus "e = 11" using x_value by simp
qed