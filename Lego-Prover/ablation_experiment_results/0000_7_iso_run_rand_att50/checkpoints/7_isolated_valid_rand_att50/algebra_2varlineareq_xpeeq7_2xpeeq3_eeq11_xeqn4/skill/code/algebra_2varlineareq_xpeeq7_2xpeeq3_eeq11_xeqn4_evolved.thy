theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by (simp add: field_simps)
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq3: "2 * x - x + 7 = 3" using eq2 by simp
  have "x + 7 = 3" using eq3 by simp 
  have "x = 3 - 7" by (metis \<open>x + 7 = 3\<close> add.commute add_diff_cancel dbl_inc_simps(3) h0)
  then have "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = -4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed