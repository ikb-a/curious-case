theorem algebra_2varlinear_eq_xpeeq7_2xpeeq3_eeq11_xeqn4_simplified:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have "e = 7 - x" using h0 by (simp add: field_simps)
  hence "2 * x + (7 - x) = 3" using h1 by simp
  then have "x + 7 = 3" by simp
  hence "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp
  then show "e = 11 \<and> x = -4" using `e = 7 - x` by simp
qed