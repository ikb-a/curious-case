theorem algebra_2var_linear_combined:
  fixes x y e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
    and h2 : "y = 3 * x + 2"
  shows "e = 11 \<and> x = -4 \<and> y = -10"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by simp
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 7 + 4" using e_value by simp
  obtain y_value: "y = 3 * (-4) + 2" using h2 by (metis dbl_inc_simps(3) dbl_simps(3) x_value_final)
  then have y_value_final: "y = -12 + 2" by simp
  then show ?thesis using x_value_final e_value_final by auto
qed