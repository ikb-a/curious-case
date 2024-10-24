lemma product_even_prime:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"
proof -
  have "a * b = 2" using assms by simp
  have "a = 0 \<or> a = 1 \<or> a = 2" 
  proof (cases "a = 0")
    case True
    then have "b = 2" using `a * b = 2` by simp
    then show ?thesis by (metis True nat_neq_iff)
  next
    case False
    then show ?thesis 
    proof (cases "a = 1")
      case True
      then show ?thesis by (metis `a * b = 2` mult_eq_0_iff nat_neq_iff)
    next
      case False
      hence "a \<ge> 2" by (metis Suc_1 Suc_eq_plus1_left Suc_le_D add_diff_cancel_left' add_diff_cancel_right' assms diff_Suc_1 diff_Suc_Suc diff_le_self diff_mult_distrib dual_order.refl le_SucE le_add_diff nat_le_linear not_less_eq_eq verit_la_disequality)
      then have "a = 2" using `a * b = 2` by (smt (verit) One_nat_def fact_2 fact_ge_Suc_0_nat mult.comm_neutral mult_le_mono2 nle_le one_le_mult_iff)
      then show ?thesis by (metis `a * b = 2` mult_eq_0_iff nat_neq_iff)
    qed
  qed
  thus ?thesis by (metis assms mult_eq_self_implies_10 mult_zero_left nat_mult_1 zero_neq_numeral)
qed