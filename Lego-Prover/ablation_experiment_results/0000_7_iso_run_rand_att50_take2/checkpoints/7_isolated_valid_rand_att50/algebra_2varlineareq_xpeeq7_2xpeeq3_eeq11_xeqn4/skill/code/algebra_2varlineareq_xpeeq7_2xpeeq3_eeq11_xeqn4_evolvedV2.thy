theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (auto simp: field_simps)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have simplified_eq: "x + 7 = 3" using substitution by simp
  then have x_value: "x = -4" by (metis add.commute add_diff_cancel_right' dbl_simps(1) dbl_simps(5) diff_add_cancel diff_numeral_simps(1) diff_numeral_special(1) sub_num_simps(3) sub_num_simps(6) sub_num_simps(9))
  hence e_value: "e = 7 - (-4)" using e_eq by simp
  thus "e = 11 \<and> x = -4" by (metis add.commute add.inverse_inverse add_diff_cancel diff_add_cancel h0 minus_diff_eq numeral_plus_numeral semiring_norm(2) semiring_norm(9) x_value)
qed