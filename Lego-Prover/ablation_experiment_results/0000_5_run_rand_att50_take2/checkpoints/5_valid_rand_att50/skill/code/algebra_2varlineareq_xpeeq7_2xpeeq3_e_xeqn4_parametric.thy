theorem algebra_2varlineareq_xpeeq7_2xpeeq3_e_xeqn4_parametric:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 7 - x \<and> x = (3 - e) / 2"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2_substituted: "2 * x + (7 - x) = 3" using h1 e_eq by simp
  show ?thesis using e_eq eq2_substituted by auto
qed