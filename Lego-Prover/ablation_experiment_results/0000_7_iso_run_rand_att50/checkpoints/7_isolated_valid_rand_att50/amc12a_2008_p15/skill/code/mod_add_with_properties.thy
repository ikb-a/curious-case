lemma mod_add_with_properties:
  fixes a b c m :: nat
  assumes "a mod m = c" "b mod m = d" "c + d < m"
  shows "(a + b) mod m = c + d"
proof -
  obtain k1 k2 where "a = c + k1 * m" "b = d + k2 * m" by (metis assms(1) assms(2) mod_mult_div_eq mult.commute)
  have "(a + b) mod m = (c + k1 * m + d + k2 * m) mod m" by (smt (verit) One_nat_def Suc_diff_eq_diff_pred \<open>a = c + k1 * m\<close> assms(2) diff_Suc_1 le_add1 le_add_same_cancel1 le_numeral_extra(3) mod_add_eq mod_add_left_eq mod_add_right_eq mod_mult_self2_is_0 ordered_cancel_comm_monoid_diff_class.diff_add_assoc ordered_cancel_comm_monoid_diff_class.diff_diff_right verit_sum_simplify zero_less_one)
  also have "... = (c + d + (k1 + k2) * m) mod m" by (auto simp: field_simps)
  finally show ?thesis using assms(3) by simp
qed