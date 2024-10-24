lemma square_root_eq_multi_dim:
  fixes a b :: "real list"
  assumes "a = b"
  shows "(\<forall>i. sqrt (a ! i) = sqrt (b ! i))"
proof -
  have "(\<forall>i. a ! i = b ! i)" using assms by simp
  then show ?thesis
    by (metis (no_types, lifting) nth_equalityI)
qed