theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (simp add: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by (simp add: field_simps)
  have x_value: "x + 7 = 3" by (metis diff_minus_eq_add simplified_eq)
  then have x_result: "x = 3 - 7" by (simp) 
  then have x_result_eq: "x = -4" by simp
  have e_value: "e = 7 - (-4)" using e_eq x_result_eq by simp
  then have e_result: "e = 11" by simp
  show ?thesis using x_result_eq e_result by auto
qed