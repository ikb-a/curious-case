lemma floor_count:
  fixes a b :: nat
  assumes "a + b = 73" "a * floor r + b * (floor r + 1) = 546"
  shows "a = 73 * floor r - 473"
proof -
  obtain n where "n = floor r" using floor_real_def by auto
  have "a * n + b * (n + 1) = 546" using assms(2) by (metis \<open>n = \<lfloor>r\<rfloor>\<close> add.commute floor_numeral floor_of_nat mult.commute of_nat_numeral or_not_num_neg.simps(2))
  have "a * n + b * (n + 1) = a * n + b * n + b" by (simp add: algebra_simps)
  also have "... = (a + b) * n + b" using assms(1) by (metis add.commute add.inverse_unique calculation cancel_comm_monoid_add_class.diff_cancel diff_minus_eq_add int_distrib(1) int_eq_iff_numeral int_ops(3) minus_equation_iff mult.commute of_nat_add verit_minus_simplify(3))
  finally have "73 * n + b = 546" using assms(1) by (metis \<open>int a * n + int b * (n + 1) = 546\<close> \<open>int a * n + int b * (n + 1) = int a * n + int b * n + int b\<close> add.commute add.inverse_unique diff_0 diff_minus_eq_add diff_self equation_minus_iff int_distrib(1) int_eq_iff_numeral int_ops(3) int_ops(5) mult.commute mult_of_nat_commute)
  have "b = 546 - 73 * n" by (smt (verit) \<open>73 * n + int b = 546\<close>)
  have "a + (546 - 73 * n) = 73" using assms(1) by (metis \<open>int b = 546 - 73 * n\<close> floor_numeral floor_of_nat int_ops(5) nat_int_add of_nat_numeral or_not_num_neg.simps(2))
  thus ?thesis 
  proof -
    have "a = 73 - (546 - 73 * n)" by (metis \<open>int b = 546 - 73 * n\<close> add_diff_cancel_right' assms(1) floor_numeral floor_of_nat int_ops(5) nat_int_add of_nat_numeral or_not_num_neg.simps(2))
    thus ?thesis by (smt (verit) \<open>n = \<lfloor>r\<rfloor>\<close>)
  qed
qed