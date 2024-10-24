lemma odd_even_product:
  fixes a b :: nat
  assumes "a mod 2 = 0" "b mod 2 = 1"
  shows "(a * b) mod 2 = 0"
proof -
  obtain k where "a = 2 * k" 
    using assms(1) by auto
  obtain m where "b = 2 * m + 1" 
    using assms(2) by (metis add.commute bits_mod_0 less_one mod_eq_nat1E one_mod_two_eq_one verit_comp_simplify1(3) zero_neq_one)
  have "a * b = (2 * k) * (2 * m + 1)" 
    using `a = 2 * k` `b = 2 * m + 1` by simp
  have "a * b = 2 * k * (2 * m) + 2 * k" 
    by (smt (verit) \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> distrib_left mult.comm_neutral)
  have "a * b = 2 * (k * (2 * m) + k)" 
    by (smt (verit) \<open>a * b = 2 * k * (2 * m) + 2 * k\<close> \<open>a = 2 * k\<close> distrib_left mult.assoc mult.commute mult.left_commute)
  thus "(a * b) mod 2 = 0"
    by auto
qed