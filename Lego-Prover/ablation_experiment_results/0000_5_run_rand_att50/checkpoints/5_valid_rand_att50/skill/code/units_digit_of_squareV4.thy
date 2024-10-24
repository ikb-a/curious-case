lemma units_digit_of_square:
  fixes n :: nat
  shows "(n^2) mod 10 = (n mod 10)^2 mod 10"
proof -
  have "n = 10 * (n div 10) + (n mod 10)" by auto
  then have "n^2 = (10 * (n div 10) + (n mod 10))^2" by simp
  also have "... = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * (n mod 10) + (n mod 10)^2" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (n div 10)^2 + 20 * (n div 10) * (n mod 10) + (n mod 10)^2" by (simp add: power2_eq_square)
  finally have "n^2 mod 10 = (100 * (n div 10)^2 + 20 * (n div 10) * (n mod 10) + (n mod 10)^2) mod 10" by simp
  then have "... = (n mod 10)^2 mod 10" using mod_mult_self2[of "n div 10" "100"] mod_mult_self2[of "n div 10" "20"] by (metis power_mod)
  thus ?thesis by (metis power_mod)
qed