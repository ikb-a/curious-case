lemma square_mod:
  fixes x :: nat
  shows "(x^2) mod 10 = (x mod 10)^2 mod 10"
proof -
  let ?m = "x mod 10"
  have "x = 10 * (x div 10) + ?m" by auto
  then have "x^2 = (10 * (x div 10) + ?m)^2" by simp
  also have "... = (10 * (x div 10))^2 + 2 * (10 * (x div 10)) * ?m + ?m^2" 
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (x div 10)^2 + 20 * (x div 10) * ?m + ?m^2" 
    by (simp add: power_mult_distrib)
  finally have "x^2 mod 10 = (?m^2) mod 10" 
    by (metis power_mod)
  thus ?thesis by simp
qed