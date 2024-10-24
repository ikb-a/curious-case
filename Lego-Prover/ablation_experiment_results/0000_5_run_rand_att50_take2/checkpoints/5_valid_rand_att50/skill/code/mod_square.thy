lemma mod_square:
  fixes a m :: nat
  shows "(a mod m)^2 mod m = (a^2) mod m"
proof -
  let ?x = "a mod m"
  have "a = m * (a div m) + ?x" by auto
  then show "(?x)^2 mod m = (a^2) mod m"
  proof -
    have "a^2 = (m * (a div m) + ?x)^2"
      by (simp add: algebra_simps)
    also have "... = (m * (a div m))^2 + 2 * (m * (a div m)) * ?x + ?x^2"
      by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
    also have "... = m^2 * (a div m)^2 + 2 * m * (a div m) * ?x + ?x^2" by (simp add: algebra_simps)
    finally have "a^2 = m^2 * (a div m)^2 + 2 * m * (a div m) * ?x + ?x^2" .
    hence "a^2 mod m = (m^2 * (a div m)^2 + 2 * m * (a div m) * ?x + ?x^2) mod m" by simp
    then have "a^2 mod m = (?x^2 mod m)" by (metis minus_div_mult_eq_mod power_mod)
    moreover have "?x^2 mod m = (?x)^2 mod m" by simp
    ultimately show "(a mod m)^2 mod m = (a^2) mod m" by simp
  qed
qed