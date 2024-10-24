lemma linear_combination:
  fixes a b :: complex
  assumes h0: "a + b = c" 
      and h1: "2 * a + b = d"
  shows "a = (d - c) / 1 \<and> b = c - a"
proof -
  obtain x where "x = c - b" using h0 by auto
  then have a_expr: "a = c - b" by (metis add.commute add_scale_eq_noteq cancel_ab_semigroup_add_class.diff_right_commute diff_add_eq_diff_diff_swap diff_eq_diff_eq eq_iff_diff_eq_0 h0 mult.commute mult_delta_left mult_delta_right)
  then have "2 * a + b = 2 * (c - b) + b" by simp
  then have "2 * a + b = 2 * c - 2 * b + b" by simp
  then have "2 * a + b = 2 * c - b" by simp
  then have "b = 2 * c - d" using h1 by simp
  then have "a = c - (2 * c - d)" using a_expr by simp
  then show ?thesis by (metis \<open>2 * a + b = 2 * c - b\<close> a_expr add.commute add_diff_cancel_right' add_diff_eq add_left_cancel add_left_imp_eq add_right_imp_eq cancel_ab_semigroup_add_class.diff_right_commute diff_add_cancel diff_add_eq diff_add_eq_diff_diff_swap diff_diff_eq diff_diff_eq2 div_by_1 eq_diff_eq h0 h1 mult.commute mult_2_right)
qed