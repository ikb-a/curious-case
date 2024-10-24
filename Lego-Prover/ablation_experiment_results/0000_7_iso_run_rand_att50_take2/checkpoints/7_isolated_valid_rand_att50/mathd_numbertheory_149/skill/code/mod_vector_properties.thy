lemma mod_vector_properties:
  fixes a b c d :: "nat list" and m :: nat
  assumes "length a = length b" and "length a = length c" 
          and "\<forall>i. a ! i mod m = b ! i" 
          and "\<forall>i. c ! i mod m = 0"
  shows "(\<forall>i. (a ! i + c ! i) mod m = b ! i)"
proof -
  have "\<forall>i. a ! i = b ! i + (a ! i div m) * m" 
    using assms(3) by (metis ab_semigroup_add_class.add_ac(1) add.commute add_right_imp_eq mult.commute mult_div_mod_eq)
  have "\<forall>i. c ! i = (c ! i div m) * m" 
    using assms(4) by (metis add_cancel_right_left add_left_imp_eq mod_mult_div_eq mult.commute)
  have "\<forall>i. (a ! i + c ! i) = (b ! i + (a ! i div m) * m) + ((c ! i div m) * m)"
    using assms(1) by (metis \<open>\<forall>i. a ! i = b ! i + a ! i div m * m\<close> \<open>\<forall>i. c ! i = c ! i div m * m\<close>)
  then have "\<forall>i. (a ! i + c ! i) = b ! i + ((a ! i div m) + (c ! i div m)) * m"
    by (auto simp: field_simps)
  then show ?thesis 
    by (metis add_cancel_left_right assms(3) assms(4) mod_0 mod_add_cong)
qed