theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have "x = 3 - 7" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  have "e = 7 - (-4)" using e_expr by (metis \<open>x = - 4\<close>)
  then show ?thesis by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7))
qed