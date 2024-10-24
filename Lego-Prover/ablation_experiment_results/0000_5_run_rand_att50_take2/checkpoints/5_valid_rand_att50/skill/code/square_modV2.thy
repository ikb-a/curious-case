lemma square_mod:
  fixes a :: int and n :: int
  shows "(a mod n)^2 mod n = (a^2 mod n)"
proof -
  let ?m = "a mod n"
  have "a = n * (a div n) + ?m" by auto
  then have "a^2 = (n * (a div n) + ?m)^2" by simp
  also have "... = (n * (a div n))^2 + 2 * (n * (a div n)) * ?m + ?m^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2" by (simp add: power2_eq_square)
  finally have "a^2 = n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2" .
  then have "a^2 mod n = (n^2 * (a div n)^2 + 2 * n * (a div n) * ?m + ?m^2) mod n" by simp
  also have "... = (?m^2 mod n)" by (metis calculation power_mod)
  finally have "a^2 mod n = (?m^2 mod n)" .
  have "?m^2 mod n = (?m)^2 mod n" by simp
  thus "(a mod n)^2 mod n = (a^2 mod n)" by (metis power_mod)
qed