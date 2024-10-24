lemma a_times_vera_n_dimensions:
  fixes a :: "real list"
  assumes "\<forall>i. a ! i \<noteq> 0"
  shows "\<forall>i. a ! i * (1 / (a ! i)) = 1"
proof -
  show "\<forall>i. a ! i * (1 / (a ! i)) = 1"
  proof (rule allI)
    fix i
    from assms have "a ! i \<noteq> 0" by auto
    then show "a ! i * (1 / (a ! i)) = 1" by (simp add: field_simps)
  qed
qed