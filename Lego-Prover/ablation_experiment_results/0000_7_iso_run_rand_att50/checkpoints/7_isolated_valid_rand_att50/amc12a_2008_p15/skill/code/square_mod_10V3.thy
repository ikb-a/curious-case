lemma square_mod_10:
  fixes n :: nat
  shows "(n mod 10)^2 mod 10 = (n^2 mod 10)"
proof -
  let ?m = "n mod 10"
  have "n = 10 * (n div 10) + ?m" 
    by (auto)
  have "(n^2) mod 10 = ((10 * (n div 10) + ?m) ^ 2) mod 10"
    by simp
  have "(10 * (n div 10) + ?m) ^ 2 = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * ?m + ?m^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  thus ?thesis
  proof -
    have "((10 * (n div 10))^2 + 2 * (10 * (n div 10)) * ?m + ?m^2) mod 10 = (?m^2) mod 10"
      by (smt (verit) \<open>(10 * (n div 10) + n mod 10)\<^sup>2 = (10 * (n div 10))\<^sup>2 + 2 * (10 * (n div 10)) * (n mod 10) + (n mod 10)\<^sup>2\<close> \<open>n = 10 * (n div 10) + n mod 10\<close> power_mod)
    also have "... = (?m^2) mod 10"
      by (simp)
    finally show ?thesis
      by (metis power_mod)
  qed
qed