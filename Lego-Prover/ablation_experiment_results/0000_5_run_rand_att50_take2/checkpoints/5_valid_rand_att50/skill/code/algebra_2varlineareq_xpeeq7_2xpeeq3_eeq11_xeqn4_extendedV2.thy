theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_extended:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 7 - x \<and> x = (-4) \<and> e = 11"
proof -
  from h0 have "e = 7 - x" by (auto simp: field_simps)
  from h1 have "2 * x + e = 3" by simp
  hence "2 * x + (7 - x) = 3" by (metis \<open>e = 7 - x\<close>)
  hence "x + 7 = 3" by simp
  then have "x = -4" by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  then have "e = 7 - (-4)" by (metis \<open>e = 7 - x\<close>)
  thus ?thesis by (metis \<open>e = 7 - x\<close> \<open>x = - 4\<close> add.commute algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4 h0 h1 uminus_add_conv_diff)
qed