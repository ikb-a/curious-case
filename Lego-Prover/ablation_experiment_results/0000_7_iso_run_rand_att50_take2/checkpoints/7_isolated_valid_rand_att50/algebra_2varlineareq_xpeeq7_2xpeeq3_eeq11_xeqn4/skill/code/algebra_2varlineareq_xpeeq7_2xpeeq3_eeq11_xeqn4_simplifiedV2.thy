theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simplified:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4 \<and> e = 11"
proof -
  have e_eq: "e = 7 - x" using h0 by (simp add: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  then have "e = 7 - (-4)" using e_eq by simp
  thus ?thesis by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7))
qed