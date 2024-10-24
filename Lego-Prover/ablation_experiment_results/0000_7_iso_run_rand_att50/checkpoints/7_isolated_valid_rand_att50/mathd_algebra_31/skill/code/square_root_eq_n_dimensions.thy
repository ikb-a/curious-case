lemma square_root_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = length b" and "a = b" and "\<forall>i. a ! i >= 0"
  shows "map sqrt a = map sqrt b"
proof -
  have "map sqrt a = map sqrt b" 
    using assms by auto
  thus ?thesis by simp
qed