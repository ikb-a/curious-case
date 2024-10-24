theorem algebra_2varlineareq:
  fixes x e :: complex
  assumes h0 : "x + e = k"  
    and h1 : "2 * x + e = m"  
  shows "e = m - 2 * (k - e) \<and> x = (m - e) / 2"  
proof -
  have e_expr: "e = k - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (k - x) = m" using e_expr h1 by simp
  have eq_simplified: "x + k = m" using eq_substituted by simp
  have x_value: "x = m - k" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq)
  hence x_value_final: "x = (m - e) / 2" using e_expr by (auto simp: field_simps)
  have e_value: "e = k - x" using e_expr x_value_final by blast
  thus ?thesis using x_value_final by fastforce
qed