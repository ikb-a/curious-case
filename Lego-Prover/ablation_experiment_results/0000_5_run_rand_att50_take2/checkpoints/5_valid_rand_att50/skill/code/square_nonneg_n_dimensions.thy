lemma square_nonneg_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = length b" and "a = b" and "\<forall>i. a ! i \<ge> 0" and "\<forall>i. b ! i \<ge> 0"
  shows "\<forall>i. a ! i^2 = b ! i^2"
proof -
  have "a = b \<Longrightarrow> \<forall>i. a ! i^2 = b ! i^2" and "length a = length b \<Longrightarrow> True"
    by auto
  hence "a ! i^2 = b ! i^2" for i
    by (metis assms(2) nth_equalityI)
  thus ?thesis by auto
qed