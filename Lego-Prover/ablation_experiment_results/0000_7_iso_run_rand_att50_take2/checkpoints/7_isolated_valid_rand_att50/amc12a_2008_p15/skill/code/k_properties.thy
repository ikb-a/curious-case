lemma k_properties:
  fixes k :: nat
  defines "k \<equiv> 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k mod 10 = (2008^2 + 2^2008) mod 10" by (metis add.commute k_def mod_add_cong numeral_1_eq_Suc_0 one_eq_numeral_iff push_bit_of_Suc_0)
  also have "... = (2008^2 mod 10 + 2^2008 mod 10) mod 10" by eval
  finally show ?thesis .
qed