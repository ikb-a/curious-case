lemma linear_equations_solution:
  fixes x e :: real
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = b - 2 * (a - e) \<and> x = (a - e)"
proof -
  have e_expr: "e = a - x" using h0 by (simp add: field_simps)
  have eq_substituted: "2 * x + (a - x) = b" using e_expr h1 by simp
  then have eq_simplified: "x + a = b" by simp
  have x_value: "x = b - a" using eq_simplified by (metis add.commute add_diff_cancel diff_add_eq)
  then have e_value: "e = a - (b - a)" using e_expr by simp
  then show ?thesis using x_value by auto
qed