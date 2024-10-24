theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e z :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
    and h2 : "x + z = 5"
  shows "e = 11 \<and> x = -4 \<and> z = 9"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  have x_value: "x = 3 - 7" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_result: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_eq x_result by simp
  then have e_result: "e = 11" by simp
  have z_value: "z = 5 - (-4)" using h2 x_result by simp
  then have z_result: "z = 9" by simp
  show ?thesis using x_result e_result z_result by auto
qed