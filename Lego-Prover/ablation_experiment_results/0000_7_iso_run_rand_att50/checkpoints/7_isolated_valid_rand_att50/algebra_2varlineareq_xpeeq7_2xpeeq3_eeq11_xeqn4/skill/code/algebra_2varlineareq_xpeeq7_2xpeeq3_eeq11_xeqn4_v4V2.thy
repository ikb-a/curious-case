theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v4:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq3: "2 * x - x + 7 = 3" using eq2 by simp
  then have "x + 7 = 3" by simp 
  then show "x = -4" by (metis add.commute add.inverse_inverse add_minus_cancel algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2 diff_add_eq diff_minus_eq_add mult.commute mult_2_right)
qed