lemma algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simple:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  let ?e = "7 - x"
  have e_expr: "?e = e" using h0 by simp
  have eq_substituted: "2 * x + ?e = 3" using e_expr h1 by simp
  have eq_simplified: "2 * x + (7 - x) = 3" using eq_substituted by simp
  have "x + 7 = 3" using eq_simplified by simp
  then have "x = 3 - 7" by (simp add: algebra_simps)
  then have x_value: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_expr x_value by simp
  then show ?thesis using x_value by (simp add: algebra_simps)
qed