lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by (metis evenE)
  obtain m where "b = 2 * m + 1" using assms(2) by (metis oddE)
  have "a * b = (2 * k) * (2 * m + 1)" 
    by (metis `a = 2 * k` `b = 2 * m + 1`)
  have "a * b = 2 * k * (2 * m) + 2 * k" by (smt (verit) \<open>a = 2 * k\<close> \<open>b = 2 * m + 1\<close> add_mult_distrib2 mult.comm_neutral)
  have "a * b = 2 * (k * (2 * m) + k)" by (smt (verit) \<open>a * b = 2 * k * (2 * m) + 2 * k\<close> \<open>a = 2 * k\<close> ab_semigroup_mult_class.mult_ac(1) add.commute assms(1) div_mult_self2 dvd_div_mult nonzero_mult_div_cancel_left zero_neq_numeral)
  thus "even (a * b)" 
    by auto
qed