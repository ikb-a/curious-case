theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_generalized:
  fixes x e :: real
  assumes h0 : "x + e = k"
    and h1 : "2 * x + e = m"
  shows "e = k - x \<and> x = (m - k) / (2 - 1)"
proof -
  have e_eq: "e = k - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (k - x) = m" using h1 e_eq by simp
  have simplified_eq: "x + k = m" using eq2_substituted by simp
  have x_value: "x = (m - k) / (2 - 1)" using simplified_eq by auto
  have e_value: "e = k - (m - k) / (2 - 1)" using e_eq x_value by simp
  show ?thesis using x_value e_value by simp
qed