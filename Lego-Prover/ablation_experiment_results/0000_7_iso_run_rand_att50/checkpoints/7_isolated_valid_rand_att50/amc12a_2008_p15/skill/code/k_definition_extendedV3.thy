lemma k_definition_extended:
  fixes k :: nat
  assumes "k = n^2 + m^n"  
  shows "k > 0"  
proof -
  have "n^2 >= 0" by simp  
  moreover have "m^n >= 0" by simp  
  ultimately show ?thesis by (metis add_is_0 assms less_numeral_extra(3) nat_1_add_1 nat_zero_less_power_iff power_eq_0_iff zero_less_iff_neq_zero)
qed