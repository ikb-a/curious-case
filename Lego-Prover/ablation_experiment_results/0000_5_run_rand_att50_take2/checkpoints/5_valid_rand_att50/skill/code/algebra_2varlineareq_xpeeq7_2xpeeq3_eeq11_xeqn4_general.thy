theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_general:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 7 - x \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by simp
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq2_simplified: "x + 7 = 3" using eq2 by simp
  have x_value: "x = -4" using eq2_simplified by auto
  have e_value: "e = 7 - (-4)" using eq1 x_value by simp
  show ?thesis using x_value e_value by simp
qed