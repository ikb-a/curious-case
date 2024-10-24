theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_generalized:
  fixes x y e :: complex
  assumes h0 : "x + y = 7"
    and h1 : "2 * x + y = 3"
  shows "y = 7 - x \<and> x = -4"
proof -
  have y_eq: "y = 7 - x" using h0 by (simp add: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using y_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel minus_equation_iff neg_numeral_neq_numeral numeral_times_minus_swap square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  then have "y = 7 - (-4)" using y_eq by simp
  thus ?thesis by (metis \<open>x = - 4\<close> uminus_add_conv_diff y_eq)
qed