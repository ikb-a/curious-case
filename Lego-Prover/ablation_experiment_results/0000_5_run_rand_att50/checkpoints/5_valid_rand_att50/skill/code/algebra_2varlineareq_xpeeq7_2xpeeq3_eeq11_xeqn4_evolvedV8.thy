theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  let ?e = "7 - x"
  have "e = ?e" using h0 by (auto simp: field_simps)
  have "2 * x + ?e = 3" using h1 by (metis \<open>e = 7 - x\<close>)
  then have "2 * x + (7 - x) = 3" by simp
  have "x + 7 = 3" using `2 * x + (7 - x) = 3` by (simp add: field_simps)
  have "x = 3 - 7" using `x + 7 = 3` by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral)
  then have "x = -4" by simp
  have "e = 7 - (-4)" using `e = ?e` `x = -4` by simp
  thus ?thesis using `e = 7 - (-4)` by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_Bit0 numeral_eq_iff numeral_plus_numeral semiring_norm(7))
qed