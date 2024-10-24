lemma arithmetic_inequalities:
  fixes a b c :: real
  assumes "a < b" and "b < c"
  shows "a < c"
proof -
  from assms(1) obtain d where "d = b - a" and "d > 0" by (auto simp: less_diff_eq)
  from assms(2) obtain e where "e = c - b" and "e > 0" by (auto simp: less_diff_eq)
  have "c - a = (c - b) + (b - a)" by (simp add: algebra_simps)
  also have "... = e + d" by (metis \<open>d = b - a\<close> \<open>e = c - b\<close> add.commute add_diff_cancel_left add_left_imp_eq calculation cancel_ab_semigroup_add_class.diff_right_commute diff_add_cancel diff_diff_eq2 group_cancel.add1 group_cancel.sub2 minus_diff_eq neg_equal_iff_equal uminus_add_conv_diff)
  finally have "c - a > 0 + 0" using `d > 0` `e > 0` by simp
  thus ?thesis using less_diff_eq by (simp add: algebra_simps)
qed