lemma square_mod:
  fixes a n :: nat
  shows "(a^2) mod n = ((a mod n)^2) mod n"
proof -
  let ?m = "a mod n"
  have "a = n * (a div n) + ?m" by auto
  then show "(a^2) mod n = ((a mod n)^2) mod n"
  proof -
    have "a^2 = (n * (a div n) + ?m)^2"
      by (simp add: algebra_simps)
    also have "... = (n * (a div n))^2 + 2 * (n * (a div n)) * ?m + ?m^2"
      by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
    also have "... = n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2" by (simp add: algebra_simps)
    finally have "a^2 = n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2" .
    hence "a^2 mod n = (n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2) mod n" by simp
    then have "a^2 mod n = (?m^2 mod n)" by (metis minus_div_mult_eq_mod power_mod)
    moreover have "?m^2 mod n = (?m)^2 mod n" by simp
    ultimately show "(a^2) mod n = ((a mod n)^2) mod n" by simp
  qed
qed