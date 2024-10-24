lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  have "a = 10 * (a div 10) + x" using assms(1) by auto
  have "b = 10 * (b div 10) + y" using assms(2) by auto
  then have "a + b = (10 * (a div 10) + x) + (10 * (b div 10) + y)"
    by (metis \<open>a = 10 * (a div 10) + x\<close>)
  thus ?thesis
  proof -
    have "a + b = 10 * ((a div 10) + (b div 10)) + (x + y)"
      by (smt (verit) \<open>a = 10 * (a div 10) + x\<close> \<open>b = 10 * (b div 10) + y\<close> ab_semigroup_add_class.add_ac(1) add.commute add_mult_distrib2)
    also have "... mod 10 = (x + y) mod 10"
      by (metis mod_mult_self4)
    finally show ?thesis by simp
  qed
qed