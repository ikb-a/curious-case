theorem algebra_2varlineareq_multiple_solutions:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 7 - x \<and> x = (3 - e) / 2"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  hence "x + 7 = 3" by (simp add: field_simps)
  then have "x = (3 - 7)" by (simp add: field_simps)
  thus ?thesis using e_expr by auto
qed