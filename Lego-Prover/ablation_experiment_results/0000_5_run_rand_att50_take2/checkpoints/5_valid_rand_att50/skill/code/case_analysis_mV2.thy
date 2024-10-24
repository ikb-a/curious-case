lemma case_analysis_m:
  fixes m :: nat
  assumes "m < 2"
  shows "m = 0 \<or> m = 1"
proof -
  have "m = 0 \<or> m = 1 \<or> m = 2" by (metis One_nat_def Suc_inject assms less_2_cases)
  moreover have "m < 2 \<Longrightarrow> m = 2 \<Longrightarrow> False" using assms by simp
  ultimately show ?thesis by (metis assms verit_comp_simplify1(1))
qed