lemma algebra_2varlineareq_derived:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4"
proof -
  have e_expr: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq_substituted: "2 * x + (7 - x) = 3" using e_expr h1 by simp
  have eq_simplified: "x + 7 = 3" using eq_substituted by simp
  show ?thesis using eq_simplified by (metis add.commute add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved diff_add_eq diff_minus_eq_add mult.commute mult_2_right verit_minus_simplify(4))
qed