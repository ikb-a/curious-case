theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  obtain x_val where x_val_def: "x_val = 7 - e" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * (7 - e) + e = 3" using x_val_def h1 by (metis add.commute add_diff_cancel_left' dbl_def dbl_inc_simps(3) dbl_simps(3) h0 mult_2)
  have eq_simplified: "14 - 2 * e + e = 3" using eq_substituted by simp
  have "14 - e = 3" using eq_simplified by simp
  then have e_value: "e = 14 - 3" by simp
  hence e_value_final: "e = 11" by simp
  then have x_value: "x = 7 - e" using h0 by (metis add_diff_cancel_right' uminus_add_conv_diff)
  then show ?thesis using e_value_final by (auto simp: field_simps)
qed