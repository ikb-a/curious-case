lemma mod_properties_multidim:
  fixes a b c d :: "nat list"
  assumes "length a = n" "length b = n" "length c = n" "length d = n"
    and "\<forall>i. a ! i mod (d ! i) = b ! i" "\<forall>i. c ! i mod (d ! i) = 0"
  shows "(\<forall>i. (a ! i + c ! i) mod (d ! i) = b ! i)"
proof -
  have "\<forall>i. a ! i = b ! i + (a ! i div (d ! i)) * (d ! i)" using assms(5) by (metis add.assoc add.commute add_right_imp_eq mult.commute mult_div_mod_eq)
  have "\<forall>i. c ! i = (c ! i div (d ! i)) * (d ! i)" using assms(6) by (metis add_cancel_left_right add_right_imp_eq mult.commute mult_div_mod_eq)
  then have "\<forall>i. a ! i + c ! i = (b ! i + (a ! i div (d ! i)) * (d ! i)) + ((c ! i div (d ! i)) * (d ! i))" 
    by (metis \<open>\<forall>i. a ! i = b ! i + a ! i div d ! i * d ! i\<close>)
  then have "\<forall>i. a ! i + c ! i = b ! i + ((a ! i div (d ! i)) + (c ! i div (d ! i))) * (d ! i)" 
    by (auto simp: field_simps)
  thus ?thesis by (metis add_0_iff assms(5) assms(6) bits_mod_0 mod_add_cong)
qed