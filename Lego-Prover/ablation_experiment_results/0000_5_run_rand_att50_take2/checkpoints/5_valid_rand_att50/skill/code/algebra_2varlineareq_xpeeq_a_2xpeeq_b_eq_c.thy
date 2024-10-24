theorem algebra_2varlineareq_xpeeq_a_2xpeeq_b_eq_c:
  fixes x e a b c :: real
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
  shows "e = a - 2 * (b - a) / 2 \<and> x = (a - e)"
proof -
  have e_eq: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (a - x) = b" using h1 e_eq by simp
  have simplified_eq: "x + a = b" using eq2_substituted by simp
  have x_value: "x = (b - a)" using simplified_eq by (metis add.commute add_diff_cancel_right' diff_add_cancel)
  have e_value: "e = a - (b - a)" using e_eq x_value by simp
  show ?thesis using x_value e_value by sos
qed