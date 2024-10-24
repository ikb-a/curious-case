lemma case_analysis_m:
  fixes m :: nat
  assumes "m < 2"
  shows "m = 0 \<or> m = 1"
proof -
  have "m = 0 \<or> m = 1 \<or> m = 2" by (metis One_nat_def Suc_inject assms less_2_cases)
  thus ?thesis
    using assms by auto
qed