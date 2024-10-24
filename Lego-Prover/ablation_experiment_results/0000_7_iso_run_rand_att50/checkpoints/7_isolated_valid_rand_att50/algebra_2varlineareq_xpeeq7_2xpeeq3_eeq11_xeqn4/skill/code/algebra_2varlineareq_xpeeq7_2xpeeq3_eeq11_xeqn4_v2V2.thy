theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_v2:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e=11 \<and> x= (-4)"
proof -
  obtain e' where eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  obtain eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  obtain eq3: "x + 7 = 3" using eq2 by (simp add: algebra_simps)
  have "x + 7 = 3" by (metis eq3)
  then have "x = 3 - 7" by (metis \<open>\<And>thesis. (x + 7 = 3 \<Longrightarrow> thesis) \<Longrightarrow> thesis\<close> add.commute add_diff_cancel_right' diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp 
  from eq1 obtain e_value where "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed