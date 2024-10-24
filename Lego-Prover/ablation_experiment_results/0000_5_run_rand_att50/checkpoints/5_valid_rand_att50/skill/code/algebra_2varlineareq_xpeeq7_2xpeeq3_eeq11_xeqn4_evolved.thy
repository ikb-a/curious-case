theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "2 * x - x + 7 = 3" using eq_substituted by simp
  have "x + 7 = 3" using eq_simplified by simp
  have x_value: "x = 3 - 7" by (metis \<open>x + 7 = 3\<close> add.commute add_diff_cancel dbl_inc_simps(3) h0)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  then have e_value_final: "e = 7 + 4" using e_value by simp
  then show ?thesis using x_value_final by auto
qed