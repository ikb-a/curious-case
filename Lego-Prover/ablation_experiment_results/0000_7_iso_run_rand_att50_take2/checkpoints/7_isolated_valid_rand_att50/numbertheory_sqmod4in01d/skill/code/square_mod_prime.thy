lemma square_mod_prime:
  fixes a :: int and p :: nat
  assumes "p > 1" and "is_prime p"
  shows "(a mod p)^2 mod p = (a^2 mod p)"
proof -
  have "a mod p = a - p * (a div p)" by (auto simp: field_simps)
  then have "((a mod p)^2 mod p) = ((a - p * (a div p))^2 mod p)" by simp
  also have "... = (a^2 - 2 * a * p * (a div p) + (p * (a div p))^2) mod p" by (smt (verit) ab_semigroup_mult_class.mult_ac(1) diff_add_eq power2_diff)
  also have "... = (a^2 mod p)" using mod_add_eq by (metis \<open>(a - int p * (a div int p))\<^sup>2 mod int p = (a\<^sup>2 - 2 * a * int p * (a div int p) + (int p * (a div int p))\<^sup>2) mod int p\<close> add.commute add_diff_eq diff_diff_eq2 minus_mult_div_eq_mod mult.commute mult.left_commute mult_2 mult_of_nat_commute of_nat_numeral power2_eq_square power_mod right_diff_distrib')
  finally show ?thesis by simp
qed