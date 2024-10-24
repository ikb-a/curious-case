lemma square_mod_10:
  fixes n :: nat
  shows "(n mod 10)^2 mod 10 = (n^2 mod 10)"
proof -
  let ?a = "n mod 10"  
  have "n = 10 * (n div 10) + ?a" 
    by auto
  then have "n^2 = (10 * (n div 10) + ?a)^2"
    by simp
  also have "... = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * ?a + ?a^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (n div 10)^2 + 20 * (n div 10) * ?a + ?a^2" 
    by (simp add: algebra_simps)
  then have "n^2 mod 10 = (100 * (n div 10)^2 + 20 * (n div 10) * ?a + ?a^2) mod 10" 
    by (metis calculation eval_mod_exp(4) mod_exp_code semiring_norm(3))
  moreover have "100 * (n div 10)^2 mod 10 = 0" 
    by auto
  moreover have "20 * (n div 10) * ?a mod 10 = 0" 
    by auto
  ultimately have "n^2 mod 10 = (?a^2) mod 10" 
    by (metis power_mod)
  thus ?thesis 
    by (simp add: power2_eq_square)
qed