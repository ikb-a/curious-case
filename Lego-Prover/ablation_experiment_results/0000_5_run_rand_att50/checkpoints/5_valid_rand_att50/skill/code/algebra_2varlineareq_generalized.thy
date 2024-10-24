theorem algebra_2varlineareq_generalized:
  fixes a b c d e :: complex
  assumes h0 : "a + b = c"
    and h1 : "d * a + b = e"
  shows "b = e - d * (c - b)"
proof -
  have b_expr: "b = c - a" using h0 by auto
  have eq_substituted: "d * a + (c - a) = e" using b_expr h1 by simp
  then show ?thesis by (metis add_diff_cancel add_diff_cancel_left' h0 h1 mult.commute)
qed