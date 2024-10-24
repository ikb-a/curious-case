lemma mod_square:
  fixes a b m :: nat
  assumes "a mod m = b"
  shows "(a^2) mod m = (b^2) mod m"
proof -
  have "a = m * (a div m) + (a mod m)" by (simp add: nat_mod_eq_iff)
  then have "a = m * (a div m) + b" using assms by simp
  then have "a^2 = (m * (a div m) + b)^2" by simp
  also have "... = (m * (a div m))^2 + 2 * (m * (a div m)) * b + b^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = m^2 * (a div m)^2 + 2 * m * (a div m) * b + b^2"
    by (simp add: field_simps)
  have "a^2 mod m = (m^2 * (a div m)^2 + 2 * m * (a div m) * b + b^2) mod m" 
    by (metis \<open>(m * (a div m))\<^sup>2 + 2 * (m * (a div m)) * b + b\<^sup>2 = m\<^sup>2 * (a div m)\<^sup>2 + 2 * m * (a div m) * b + b\<^sup>2\<close> calculation modulo_nat_def mult.commute power2_eq_square)
  have "m^2 * (a div m)^2 mod m = 0" by auto
  have "2 * m * (a div m) * b mod m = 0" by auto
  thus ?thesis 
    by (metis assms mod_mult_eq nat_mod_eq_iff power2_eq_square)
qed