lemma linear_combination_unique_solution:
  fixes a b c d :: real
  assumes h0 : "a + b = 7"
    and h1 : "2 * a + b = 3"
  shows "b = 11 \<and> a = -4"
proof -
  have eq1: "b = 7 - a" using h0 by (auto simp: field_simps)
  have eq2: "2 * a + (7 - a) = 3" using h1 eq1 by simp
  have eq3: "a + 7 = 3" by (metis dbl_def dbl_inc_simps(3) dbl_simps(3) h0 h1 left_add_twice mult_2)
  then have "a = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "a = -4" by simp 
  from eq1 have "b = 7 - (-4)" by (metis \<open>a = -4\<close>)
  then have "b = 7 + 4" by simp
  then show "b = 11 \<and> a = -4" by (smt (verit) \<open>a = - 4\<close>)
qed