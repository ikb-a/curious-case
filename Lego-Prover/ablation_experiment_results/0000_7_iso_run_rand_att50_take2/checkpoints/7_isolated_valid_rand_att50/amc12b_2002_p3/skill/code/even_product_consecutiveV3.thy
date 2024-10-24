lemma even_product_consecutive:
  fixes n :: nat
  shows "even (n * (n + 1))"
proof -
  have "n * (n + 1) = n^2 + n" by (metis add.commute add_cancel_right_left add_left_imp_eq add_mult_distrib comm_monoid_mult_class.mult_1 diff_zero group_cancel.add2 linordered_nonzero_semiring_class.zero_le_one mult.commute mult_1 mult_eq_0_iff nat_eq_add_iff1 power2_eq_square)
  have "n * (n + 1) = 2 * (n div 2) * (n + 1) + (n mod 2) * (n + 1)" by (smt (verit) add_mult_distrib mult_div_mod_eq)
  have "n mod 2 = 0 \<or> n mod 2 = 1" by auto
  moreover {
    assume "n mod 2 = 0"
    then have "even (n * (n + 1))" using `n * (n + 1) = 2 * (n div 2) * (n + 1) + (n mod 2) * (n + 1)` by auto
  }
  moreover {
    assume "n mod 2 = 1"
    then have "n + 1 = 2 * ((n + 1) div 2)" by presburger
    hence "n * (n + 1) = n * (2 * ((n + 1) div 2))" by simp
    then have "even (n * (n + 1))" by auto
  }
  ultimately show "even (n * (n + 1))" by auto
qed