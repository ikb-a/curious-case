theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + e = 3" using h1 eq1 by simp
  have eq3: "2 * x + (7 - x) = 3" using eq2 by (metis eq1)
  have "2 * x - x + 7 = 3" using eq3 by simp
  hence "x + 7 = 3" by simp 
  hence "x = 3 - 7" by (metis \<open>2 * x - x + 7 = 3\<close> add.commute add_diff_cancel add_minus_cancel diff_add_eq group_cancel.add2 group_cancel.sub1 minus_add_cancel mult.commute mult_2_right numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  hence "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  hence "e = 7 + 4" by simp
  thus "e = 11 \<and> x = -4" by (simp add: \<open>x = -4\<close>)
qed