lemma distinct_nonzero:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "x * y \<noteq> 0"
proof -
  have "x * y = 0 \<longleftrightarrow> (x = 0 \<or> y = 0)" 
    by (simp add: algebra_simps)
  then show "x * y \<noteq> 0" 
    using assms by auto
qed