lemma k_expression_mod:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 100 = (2008^2 mod 100 + 2^2008 mod 100) mod 100"
proof -
  have "k mod 100 = (2008^2 + 2^2008) mod 100" by (metis add.commute assms mod_add_cong numeral_1_eq_Suc_0 one_eq_numeral_iff push_bit_of_Suc_0)
  also have "... = (2008^2 mod 100 + 2^2008 mod 100) mod 100" by eval
  finally show ?thesis by blast
qed