lemma divisibility_properties:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "\<exists>k. a = k * m + b"
proof -
  from assms(1) have "a mod m = b" by simp
  then obtain q where "a = m * q + b" 
    using div_mult_mod_eq by (metis div_mod_decomp mult.commute)
  moreover have "q = a div m" 
    by (smt (verit) Euclidean_Division.div_eq_0_iff add_cancel_left_left add_eq_self_zero add_right_imp_eq assms(2) bits_div_by_0 calculation div_add1_eq div_mult2_eq div_mult_self4 mod_mult_self4 mult_not_zero nonzero_mult_div_cancel_left nonzero_mult_div_cancel_right not_add_less1)
  ultimately show "\<exists>k. a = k * m + b" 
    by fastforce
qed