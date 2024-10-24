theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_more_vars:
  fixes x e f :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
    and h2 : "f = 2 * x + e + 5"
  shows "e = 11 \<and> x = (-4) \<and> f = 8"
proof -
  obtain x_val where x_val_def: "x_val = 7 - e" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * (7 - e) + e = 3" using x_val_def h1 by (metis add.commute add_diff_cancel_left' dbl_def dbl_inc_simps(3) dbl_simps(3) dbl_simps(5) h0 inc.simps(1) mult_2 numeral_One)
  have eq_simplified: "14 - 2 * e + e = 3" using eq_substituted by simp
  have "14 - e = 3" using eq_simplified by simp
  then have e_value: "e = 14 - 3" by simp
  hence e_value_final: "e = 11" by simp
  then have x_value: "x = 7 - e" using h0 by (metis add_diff_cancel uminus_add_conv_diff)
  then have x_value_final: "x = -4" by (simp add: e_value_final)
  have f_value: "f = 2 * x + e + 5" using h2 by simp
  have f_value_final: "f = 2 * (-4) + 11 + 5" by (metis dbl_inc_simps(3) dbl_simps(3) e_value_final h1 h2 x_value_final)
  thus ?thesis using x_value_final e_value_final f_value_final by auto
qed