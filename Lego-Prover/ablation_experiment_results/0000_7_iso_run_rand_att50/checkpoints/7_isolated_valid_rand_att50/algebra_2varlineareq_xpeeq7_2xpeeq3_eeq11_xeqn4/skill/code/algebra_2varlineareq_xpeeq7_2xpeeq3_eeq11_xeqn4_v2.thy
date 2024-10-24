theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  let ?e = "7 - x"  
  have eq1: "?e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + ?e = 3" using h1 eq1 by (metis add_diff_eq add_minus_cancel h0 one_plus_BitM or_not_num_neg.simps(2) uminus_add_conv_diff)
  have eq3: "2 * x + (7 - x) = 3" using eq2 by simp
  have eq4: "x + 7 = 3" using eq3 by simp
  have "x = 3 - 7" using eq4 by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  from eq1 have "?e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "?e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add_minus_cancel h0 numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7) uminus_add_conv_diff)
qed