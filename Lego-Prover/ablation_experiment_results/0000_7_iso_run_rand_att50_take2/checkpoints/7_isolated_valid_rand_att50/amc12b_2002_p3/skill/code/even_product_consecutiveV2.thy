lemma even_product_consecutive:
  fixes n :: nat
  shows "even (n * (n + 1))"
proof -
  have "n * (n + 1) = n^2 + n" by (metis add.commute add_cancel_right_left add_left_imp_eq add_mult_distrib comm_monoid_mult_class.mult_1 diff_zero group_cancel.add2 linordered_nonzero_semiring_class.zero_le_one mult.commute mult_1 mult_eq_0_iff nat_eq_add_iff1 power2_eq_square)
  also have "... = 2 * (n div 2) * (n + 1) + (n mod 2) * (n + 1)" by (smt (verit) add_is_0 calculation comm_semiring_class.distrib div_mult_self1 div_mult_self3 div_mult_self_is_m less_one mod_mult_div_eq trans_less_add2 zero_neq_one)
  then have "n * (n + 1) = 2 * (n div 2 * (n + 1)) + (n mod 2) * (n + 1)" by (metis add.commute add.left_commute add_0 add_cancel_left_right add_left_imp_eq comm_semiring_class.distrib distrib_left mod_mult_div_eq mult.commute mult.left_commute mult_is_0 one_add_one)
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  moreover {
    assume "n mod 2 = 0"
    then have "even (n * (n + 1))" using `n mod 2 = 0` by simp
  }
  moreover {
    assume "n mod 2 = 1"
    then have "n + 1 = 2 * ((n + 1) div 2)" by presburger
    hence "n * (n + 1) = n * (2 * ((n + 1) div 2))" by simp
    then have "even (n * (n + 1))" by auto
  }
  ultimately show "even (n * (n + 1))" by auto
qed