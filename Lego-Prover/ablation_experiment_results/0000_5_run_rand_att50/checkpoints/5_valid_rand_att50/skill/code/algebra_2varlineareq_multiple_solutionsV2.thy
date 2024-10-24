theorem algebra_2varlineareq_multiple_solutions:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<or> x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" by (smt (verit) h0 h1 left_add_twice)
  have x_value: "x = 3 - 7" by (metis add.commute add_diff_cancel_right' dbl_inc_simps(3) eq_simplified h0)
  then have x_value_final: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value_final by simp
  have e_value_final: "e = 11" using e_value by simp
  then show ?thesis by auto
qed