lemma mod_add:
  fixes a b c d m :: nat
  assumes "a mod m = c" "b mod m = d" "m > 0"
  shows "(a + b) mod m = (c + d) mod m"
proof -
  have "c < m" and "d < m"
    using assms by auto
  have "a = c + m * (a div m)" and "b = d + m * (b div m)"
    using assms by auto
  have "a + b = (c + d) + m * (a div m + b div m)"
    by (smt (z3) \<open>a = c + m * (a div m)\<close> \<open>b = d + m * (b div m)\<close> ab_semigroup_add_class.add_ac(1) add.assoc add_mono_thms_linordered_semiring(4) add_mult_distrib2 distrib_left group_cancel.add2)
  then have "(a + b) mod m = ((c + d) + m * (a div m + b div m)) mod m"
    by simp
  also have "... = (c + d) mod m"
    using `c < m` `d < m` by auto
  finally show ?thesis by simp
qed