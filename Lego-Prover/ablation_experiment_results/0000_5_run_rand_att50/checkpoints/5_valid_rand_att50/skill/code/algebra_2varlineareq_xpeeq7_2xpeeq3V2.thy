theorem algebra_2varlineareq_xpeeq7_2xpeeq3:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  from h0 have e_expr: "e = 7 - x" by (simp add: field_simps)
  from h1 have eq_substituted: "2 * x + (7 - x) = 3" using e_expr by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  have x_value: "x = 3 - 7" using eq_simplified by (simp add: field_simps)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  then have e_value_final: "e = 7 + 4" by simp
  thus ?thesis using x_value_final by auto
qed