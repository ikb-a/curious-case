theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_evolved:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq3: "x + 7 = 3" using eq2 by simp 
  hence "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq)
  hence "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" using \<open>x = -4\<close> by simp
  hence "e = 7 + 4" by simp
  thus "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed