lemma case_analysis_m:
  fixes m :: nat
  assumes "m < 2"
  shows "m = 0 \<or> m = 1"
proof -
  have "m = 0 \<or> m = 1 \<or> m = 2" 
    using assms by auto
  thus ?thesis 
    using `m < 2` by auto
qed