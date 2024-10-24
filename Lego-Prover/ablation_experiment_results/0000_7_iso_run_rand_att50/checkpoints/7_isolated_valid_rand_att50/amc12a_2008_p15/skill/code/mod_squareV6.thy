lemma mod_square:
  fixes a m :: nat
  shows "(a^2) mod m = ((a mod m) ^ 2) mod m"
proof -
  let ?b = "a mod m"
  have "a = m * (a div m) + ?b" by (simp add: nat_mod_eq_iff)
  then have "a^2 = (m * (a div m) + ?b)^2" by simp
  also have "... = (m * (a div m))^2 + 2 * (m * (a div m)) * ?b + ?b^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = m^2 * (a div m)^2 + 2 * m * (a div m) * ?b + ?b^2"
    by (simp add: field_simps)
  then have "a^2 mod m = (m^2 * (a div m)^2 + 2 * m * (a div m) * ?b + ?b^2) mod m"
    by (metis calculation modulo_nat_def mult.commute power2_eq_square)
  have "m^2 * (a div m)^2 mod m = 0" 
    by (simp add: nat_mod_eq_iff)
  have "2 * m * (a div m) * ?b mod m = 0" 
    by (simp add: nat_mod_eq_iff)
  have "?b^2 mod m = (?b^2) mod m" by simp
  thus ?thesis 
    by (metis power_mod)
qed