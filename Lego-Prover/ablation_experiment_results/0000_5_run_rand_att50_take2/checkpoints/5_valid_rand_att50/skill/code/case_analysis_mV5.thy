lemma case_analysis_m:
  fixes m :: nat
  assumes "m < 2"
  shows "m = 0 \<or> m = 1"
proof -
  have "m < 2" by (rule assms)
  then show ?thesis
  proof (cases m)
    case 0
    then show ?thesis by auto
  next
    case (Suc k)
    then show ?thesis using `m < 2` by auto
  qed
qed