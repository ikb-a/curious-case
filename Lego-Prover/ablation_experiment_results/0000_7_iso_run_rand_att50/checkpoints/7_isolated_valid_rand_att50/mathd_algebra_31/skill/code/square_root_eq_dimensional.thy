lemma square_root_eq_dimensional:
  fixes a b :: "real list" 
  assumes "length a = length b" "a = b"
  shows "(\<forall>i. 0 \<le> a ! i) \<Longrightarrow> (\<forall>i. 0 \<le> b ! i) \<Longrightarrow> (\<forall>i. sqrt (a ! i) = sqrt (b ! i))"
proof -
  have "\<forall>i. sqrt (a ! i) = sqrt (b ! i)" 
    using assms(2) by (metis nth_equalityI)
  thus ?thesis using assms(1) by simp
qed