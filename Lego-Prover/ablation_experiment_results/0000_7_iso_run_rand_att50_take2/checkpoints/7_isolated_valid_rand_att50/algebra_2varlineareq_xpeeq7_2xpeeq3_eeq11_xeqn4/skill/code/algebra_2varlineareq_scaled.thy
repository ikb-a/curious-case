theorem algebra_2varlineareq_scaled:
  fixes x e :: real
  assumes h0 : "x + e = 14"  
    and h1 : "2 * x + e = 6"  
  shows "e=22 \<and> x= (-8)"
proof -
  have e_eq: "e = 14 - x" using h0 by (simp add: field_simps)
  have substitution: "2 * x + (14 - x) = 6" using e_eq h1 by simp
  have simplified_eq: "x + 14 = 6" using substitution by simp
  have x_value: "x = 6 - 14" using simplified_eq by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have x_result: "x = -8" by simp
  have e_value: "e = 14 - (-8)" using e_eq x_result by simp
  then have e_result: "e = 22" by simp
  show ?thesis using x_result e_result by auto
qed