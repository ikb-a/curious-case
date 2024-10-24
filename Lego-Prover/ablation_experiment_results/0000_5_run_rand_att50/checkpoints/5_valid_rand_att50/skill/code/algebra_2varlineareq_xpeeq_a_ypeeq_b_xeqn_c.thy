theorem algebra_2varlineareq_xpeeq_a_ypeeq_b_xeqn_c:
  fixes x e :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = (b - 2*a) / -1 \<and> x = (a - e)"
proof -
  have e_expr: "e = a - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (a - x) = b" using e_expr h1 by simp
  have eq_simplified: "x + a = b" using eq_substituted by simp
  then have x_value: "x = b - a" by (metis add_diff_cancel diff_add_eq)
  then have e_value: "e = a - (b - a)" using e_expr x_value by simp
  then show ?thesis using x_value e_value by auto
qed