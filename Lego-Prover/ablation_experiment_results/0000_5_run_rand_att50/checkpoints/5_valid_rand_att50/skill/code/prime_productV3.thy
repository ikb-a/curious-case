lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_def)
  {
    assume "a > 1"
    then have "a * b = a * 1" 
      using assms prime_def by (metis \<open>1 < a * b\<close> div_less div_mult2_eq div_mult_self1_is_m dual_order.strict_trans dvd_triv_right less_numeral_extra(1) mult.commute mult.right_neutral nat_0_less_mult_iff zero_neq_one)
    hence "b = 1" by (metis assms interactive.prime_def mult_delta_left mult_left_cancel not_one_less_zero)
  }
  {
    assume "b > 1"
    then have "a * b = 1 * b" 
      using assms prime_def by (metis \<open>1 < a * b\<close> \<open>1 < a \<Longrightarrow> b = 1\<close> bot_nat_0.extremum_strict dual_order.irrefl dvd_triv_right gcd_nat.extremum_uniqueI less_one linorder_less_linear mult.commute mult_1 mult_delta_right nat_mult_1_right)
    hence "a = 1" by (metis \<open>1 < b\<close> gr_implies_not0 mult_right_cancel)
  }
  then show "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff)
qed