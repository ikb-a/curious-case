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
    by (metis ab_semigroup_mult_class.mult_ac(1) add.commute add_cancel_left_right group_cancel.add1 group_cancel.add2 mod_add_cong mod_mult_eq mod_mult_self1_is_0 mod_mult_self2 mult.left_commute mult_is_0 power2_eq_square power_mod power_mult_distrib)
  have "m^2 * (a div m)^2 mod m = 0" 
    by (simp add: nat_mod_eq_iff)
  have "2 * m * (a div m) * ?b mod m = 0" 
    by (simp add: nat_mod_eq_iff)
  thus ?thesis 
    by (metis mod_mult_eq nat_mod_eq_iff power2_eq_square)
qed