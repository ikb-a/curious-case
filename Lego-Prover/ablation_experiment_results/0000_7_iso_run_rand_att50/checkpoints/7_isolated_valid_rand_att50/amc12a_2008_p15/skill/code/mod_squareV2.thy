lemma mod_square:
  fixes a m :: nat
  assumes "a mod m = b"
  shows "(a^2) mod m = (b^2) mod m"
proof -
  have "a = m * (a div m) + b" using assms by auto
  then have "a^2 = (m * (a div m) + b)^2" by simp
  also have "... = (m * (a div m))^2 + 2 * (m * (a div m)) * b + b^2" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = m^2 * (a div m)^2 + 2 * m * (a div m) * b + b^2" by (auto simp: field_simps)
  thus ?thesis by (metis \<open>a\<^sup>2 = (m * (a div m) + b)\<^sup>2\<close> mod_mult_cong mod_mult_self4 power2_eq_square)
qed