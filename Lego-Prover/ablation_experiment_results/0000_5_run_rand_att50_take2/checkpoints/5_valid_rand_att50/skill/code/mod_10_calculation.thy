lemma mod_10_calculation:
  fixes a :: nat
  assumes "a mod 10 = 8"
  shows "a^2 mod 10 = 4"
proof -
  have "a = 10 * (a div 10) + 8" using assms by presburger
  then have "a^2 = (10 * (a div 10) + 8)^2" by simp
  also have "... = (10 * (a div 10))^2 + 2 * (10 * (a div 10)) * 8 + 8^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (a div 10)^2 + 160 * (a div 10) + 64" 
    by (simp add: power2_eq_square)
  finally have "a^2 = 100 * (a div 10)^2 + 160 * (a div 10) + 64" .
  then show "a^2 mod 10 = 4" 
  proof -
    have "a^2 mod 10 = (100 * (a div 10)^2 + 160 * (a div 10) + 64) mod 10" by (metis \<open>a\<^sup>2 = 100 * (a div 10)\<^sup>2 + 160 * (a div 10) + 64\<close> eval_mod_exp(4) mod_exp_code semiring_norm(3))
    also have "... = (0 + 0 + 64) mod 10" 
      using mod_mult_self1 mod_mult_self2 by presburger
    finally show "a^2 mod 10 = 4" 
      by simp
  qed
qed