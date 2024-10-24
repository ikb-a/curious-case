lemma congruence_properties:
  fixes a b c d m :: nat
  assumes "a mod m = b" and "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  obtain k1 where "a = b + k1 * m" using assms(1) by (metis mod_mult_div_eq mult.commute)
  obtain k2 where "c = d + k2 * m" using assms(2) by (metis mod_mult_div_eq mult.commute)
  have "a + c = (b + k1 * m) + (d + k2 * m)"
    by (metis \<open>a = b + k1 * m\<close> \<open>c = d + k2 * m\<close> add.commute)
  then have "a + c = (b + d) + (k1 + k2) * m"
    by (simp add: algebra_simps)
  then have "(a + c) mod m = ((b + d) + (k1 + k2) * m) mod m"
    by simp
  also have "... = (b + d) mod m"
    by (simp add: mod_add_eq)
  finally show ?thesis by simp
qed