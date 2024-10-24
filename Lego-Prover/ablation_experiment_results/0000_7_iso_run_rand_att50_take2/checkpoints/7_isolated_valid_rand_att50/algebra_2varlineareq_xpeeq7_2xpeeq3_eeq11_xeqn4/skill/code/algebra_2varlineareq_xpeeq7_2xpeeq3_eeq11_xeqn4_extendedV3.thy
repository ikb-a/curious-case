theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e=11 \<and> x= (-4) \<or> (e = 7 - x \<and> e = 2 * x + 3)"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  have x_value: "x = 3 - 7" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  have x_result: "x = -4" by (smt (verit) add.commute add_diff_add add_implies_diff add_neg_numeral_simps(2) add_neg_numeral_special(8) add_right_imp_eq diff_add_eq diff_diff_eq diff_diff_eq2 diff_numeral_simps(3) diff_self e_eq h0 numeral_Bit1 one_plus_BitM semiring_norm(165) semiring_norm(26) semiring_norm(27) simplified_eq uminus_numeral_One x_value)
  have e_value: "e = 7 - (-4)" using e_eq x_result by simp
  have e_result: "e = 11" by (metis add.commute diff_minus_eq_add e_eq numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7) x_result)
  show ?thesis 
  proof (cases "e = 11")
    case True
    then show ?thesis using x_result e_result by auto
  next
    case False
    then show ?thesis using e_eq h1 by (metis BitM_plus_one add.commute crossproduct_eq diff_diff_eq diff_minus_eq_add diff_numeral_special(4) e_result minus_diff_commute minus_equation_iff minus_mult_commute mult.commute mult_minus_right neg_equal_iff_equal one_add_one right_diff_distrib semiring_norm(5))
  qed
qed