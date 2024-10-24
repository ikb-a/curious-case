lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto  
  obtain m where "b = 2 * m + 1" using assms(2) by (metis odd_two_times_div_two_succ)  
  have "a * b = (2 * k) * (2 * m + 1)" by (metis `a = 2 * k` `b = 2 * m + 1`)
  have "a * b = (2 * k * 2 * m) + (2 * k * 1)" by (smt (verit) \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> ab_semigroup_mult_class.mult_ac(1) distrib_left)
  have "a * b = 2 * (k * (2 * m) + k)" by (smt (verit) \<open>a * b = 2 * k * 2 * m + 2 * k * 1\<close> \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> ab_semigroup_mult_class.mult_ac(1) add.commute add_implies_diff add_mult_distrib2 add_self_div_2 assms(1) diff_mult_distrib2 div_mult_div_if_dvd div_mult_mult2 div_mult_self2 dvd_div_div_eq_mult dvd_div_mult gcd_nat.eq_iff mult.left_commute mult_of_nat_commute nonzero_mult_div_cancel_left numeral_Bit0_div_2 numerals(1) of_nat_1 zero_neq_numeral)
  thus "even (a * b)" by auto
qed