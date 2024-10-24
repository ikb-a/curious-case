lemma case_analysis_m:
  fixes m :: nat
  assumes "m < 2"
  shows "m = 0 \<or> m = 1"
proof -
  have "m < 2" using assms by simp
  then show ?thesis
  proof (cases m)
    case 0
    then show ?thesis by auto
  next
    case (Suc n)
    hence "m = Suc n" by simp
    then have "Suc n < 2" by (metis Suc_leI assms)
    thus ?thesis
      by (metis One_nat_def Suc_inject assms less_2_cases)
  qed
qed