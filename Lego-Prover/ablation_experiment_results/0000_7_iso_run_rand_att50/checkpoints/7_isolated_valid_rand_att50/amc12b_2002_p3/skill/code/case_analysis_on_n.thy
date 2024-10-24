lemma case_analysis_on_n:
  fixes n :: nat
  assumes "n > 0"
  shows "n = 1 \<or> n = 2 \<or> n = 3 \<or> n > 3"
proof -
  have "n = 1 \<or> n = 2 \<or> n = 3 \<or> n > 3" 
  proof (cases "n")
    case 0
    then show ?thesis using assms by simp
  next
    case (Suc m)
    then show ?thesis 
    proof (cases "m")
      case 0
      then show ?thesis by (metis Ex_less_Suc Suc_1 Suc_lessD assms eval_nat_numeral(3) less_Suc_eq less_trans_Suc nat_less_induct nat_neq_iff not_less_zero numeral_1_eq_Suc_0 numeral_eq_one_iff zero_induct zero_less_iff_neq_zero)
    next
      case (Suc k)
      then show ?thesis by (metis Ex_less_Suc Suc_1 Suc_lessD assms eval_nat_numeral(3) less_Suc_eq less_trans_Suc less_zeroE nat_less_induct nat_neq_iff numeral_1_eq_Suc_0 one_eq_numeral_iff zero_induct zero_less_iff_neq_zero)
    qed
  qed
  thus ?thesis by auto
qed