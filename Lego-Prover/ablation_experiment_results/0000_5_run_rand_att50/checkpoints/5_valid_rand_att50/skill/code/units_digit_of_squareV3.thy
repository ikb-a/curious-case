lemma units_digit_of_square:
  fixes n :: nat
  shows "(n^2) mod 10 = (n mod 10)^2 mod 10"
proof -
  have "n = 10 * (n div 10) + (n mod 10)" by auto
  then have "n^2 = (10 * (n div 10) + (n mod 10))^2" by simp
  also have "... = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * (n mod 10) + (n mod 10)^2" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (n div 10)^2 + 20 * (n div 10) * (n mod 10) + (n mod 10)^2" by simp
  finally have "n^2 = 100 * (n div 10)^2 + 20 * (n div 10) * (n mod 10) + (n mod 10)^2" .
  then have "n^2 mod 10 = (100 * (n div 10)^2 + 20 * (n div 10) * (n mod 10) + (n mod 10)^2) mod 10" by simp
  also have "... = (0 + 0 + (n mod 10)^2) mod 10" by (metis add_cancel_right_left calculation group_cancel.add1 power_mod)
  finally show ?thesis by simp
qed