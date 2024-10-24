lemma odd_even_product:
  fixes a b :: nat
  assumes "a mod 2 = 0" "b mod 2 = 1"
  shows "(a * b) mod 2 = 0"
proof -
  from assms(1) obtain k where "a = 2 * k" 
    by auto
  from assms(2) obtain m where "b = 2 * m + 1" 
    by (metis add.commute bits_mod_0 less_one mod_eq_nat1E one_mod_two_eq_one verit_comp_simplify1(3) zero_neq_one)
  have "a * b = (2 * k) * (2 * m + 1)"
    using `a = 2 * k` `b = 2 * m + 1` by simp
  have "a * b = (2 * k) * (2 * m) + (2 * k) * 1" 
    by (smt (verit) \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> distrib_left)
  have "a * b = 2 * (k * (2 * m) + k)"
    by (smt (verit) One_nat_def \<open>a * b = 2 * k * (2 * m) + 2 * k * 1\<close> \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> assms(1) diff_add_0 diff_mult_distrib2 distrib_left div_mod_decomp div_mult_self1_is_m mult.assoc mult.commute mult.left_commute mult_Suc_right pos2)
  have "(a * b) mod 2 = (2 * (k * (2 * m) + k)) mod 2"
    by (metis assms(1) assms(2) bits_one_mod_two_eq_one mod_mult_cong mod_mult_self1_is_0 mult.comm_neutral)
  also have "... = 0"
    by auto
  finally show ?thesis
    by auto
qed