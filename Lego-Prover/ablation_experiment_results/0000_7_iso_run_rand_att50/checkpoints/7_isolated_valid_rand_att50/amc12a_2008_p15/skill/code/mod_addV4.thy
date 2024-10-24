lemma mod_add:
  fixes a b c d m :: nat
  assumes "a mod m = c" "b mod m = d" "m > 0"
  shows "(a + b) mod m = (c + d) mod m"
proof -
  have "c < m" using assms(1) by (metis assms(3) mod_less_divisor)
  have "d < m" using assms(2) by (metis assms(3) mod_less_divisor)
  have "a = c + m * (a div m)" using assms(1) by auto
  have "b = d + m * (b div m)" using assms(2) by auto
  then have "a + b = (c + d) + m * ((a div m) + (b div m))" by (smt (z3) \<open>a = c + m * (a div m)\<close> ab_semigroup_add_class.add_ac(1) add.assoc add_mono_thms_linordered_semiring(4) add_mult_distrib2 distrib_left group_cancel.add2)
  have "(a + b) mod m = ((c + d) + m * ((a div m) + (b div m))) mod m" by (metis \<open>a + b = c + d + m * (a div m + b div m)\<close>)
  also have "... = (c + d) mod m" using assms(3) by auto
  finally show ?thesis .
qed