lemma square_mod_10:
  fixes n :: nat
  shows "(n mod 10)^2 mod 10 = (n^2 mod 10)"
proof -
  let ?m = "n mod 10"
  have "n = 10 * (n div 10) + ?m" by auto
  then have "n^2 = (10 * (n div 10) + ?m)^2" by simp
  also have "... = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * ?m + ?m^2" 
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (n div 10)^2 + 20 * (n div 10) * ?m + ?m^2" 
    by (simp add: power_mult_distrib)
  finally have "n^2 mod 10 = (?m^2) mod 10" 
    by (metis power_mod)
  have "?m^2 mod 10 = (?m^2) mod 10" by simp
  thus ?thesis by (simp add: `n^2 mod 10 = (?m^2) mod 10`)
qed