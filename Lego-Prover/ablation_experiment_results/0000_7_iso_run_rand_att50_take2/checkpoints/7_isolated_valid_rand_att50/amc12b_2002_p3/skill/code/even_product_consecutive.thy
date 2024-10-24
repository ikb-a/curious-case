lemma even_product_consecutive:
  fixes n :: nat
  shows "even (n * (n + 1))"
proof -
  have "n * (n + 1) = n^2 + n" by (metis add.commute add_cancel_right_left add_left_imp_eq add_mult_distrib comm_monoid_mult_class.mult_1 diff_zero group_cancel.add2 linordered_nonzero_semiring_class.zero_le_one mult.commute mult_1 mult_eq_0_iff nat_eq_add_iff1 power2_eq_square)
  have "n^2 + n = n * (n + 1)" by (metis \<open>n * (n + 1) = n\<^sup>2 + n\<close>)
  have "even n \<or> even (n + 1)" by auto
  moreover {
    assume "even n"
    then have "even (n * (n + 1))" by (metis even_mult_iff)
  }
  moreover {
    assume "even (n + 1)"
    then have "even (n * (n + 1))" by (metis even_mult_iff)
  }
  ultimately show "even (n * (n + 1))" by auto
qed