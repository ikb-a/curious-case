lemma solve_product_eq:
  fixes a b :: nat
  assumes "a * b = 2"
  shows "a = 1 \<and> b = 2 \<or> a = 2 \<and> b = 1"
proof -
  have "a * b = 2" using assms by simp
  then show ?thesis
  proof (cases "a = 0")
    case True
    then have "2 = 0" using `a * b = 2` by auto
    thus ?thesis by (metis zero_neq_numeral)
  next
    case False
    then have "a > 0" by simp
    then have "b > 0" using `a * b = 2` by (metis mult_is_0 zero_less_iff_neq_zero zero_neq_numeral)
    then show ?thesis
    proof (cases "a = 1")
      case True
      then have "b = 2" using `a * b = 2` by auto
      thus ?thesis by (metis True)
    next
      case False
      then have "a > 1" by (metis `a > 0` less_numeral_extra(3) less_one linorder_neq_iff)
      then have "b < 2" using `a * b = 2` by (metis Ex_less_Suc False Suc_1 Suc_lessD \<open>0 < a\<close> \<open>0 < b\<close> less_Suc_eq less_trans_Suc mult.comm_neutral n_less_m_mult_n nat_induct_non_zero nat_less_induct nat_mult_less_cancel_disj nat_neq_iff not_less0 numeral_1_eq_Suc_0 one_eq_numeral_iff pos2 zero_less_iff_neq_zero)
      then have "b = 1" using `b > 0` by auto
      then show ?thesis by (metis Suc_1 assms nat_mult_1_right)
    qed
  qed
qed