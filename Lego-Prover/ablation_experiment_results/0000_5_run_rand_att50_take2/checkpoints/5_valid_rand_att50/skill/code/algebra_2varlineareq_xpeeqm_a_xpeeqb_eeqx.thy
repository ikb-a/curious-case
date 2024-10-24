theorem algebra_2varlineareq_xpeeqm_a_xpeeqb_eeqx:
  fixes x e a b c :: complex
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = (2*a - b) / 1 \<and> x = (a - e)"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a)" using simplified_eq by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel)
  have e_value: "e = a - (b - a)" using e_eq x_value by simp
  show ?thesis using x_value e_value by (simp add: h0)
qed