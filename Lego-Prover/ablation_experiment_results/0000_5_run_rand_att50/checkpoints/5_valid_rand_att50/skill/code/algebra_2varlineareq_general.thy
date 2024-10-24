theorem algebra_2varlineareq_general:
  fixes a b c d :: complex
  assumes h0 : "a + b = c"
    and h1 : "2 * a + b = d"
  shows "b = c - a \<and> a = (d - b) / 2"
proof -
  have b_expr: "b = c - a" using h0 by (auto simp: field_simps)
  have a_expr: "a = (d - b) / 2" using h1 b_expr by auto
  then show ?thesis using b_expr by auto
qed