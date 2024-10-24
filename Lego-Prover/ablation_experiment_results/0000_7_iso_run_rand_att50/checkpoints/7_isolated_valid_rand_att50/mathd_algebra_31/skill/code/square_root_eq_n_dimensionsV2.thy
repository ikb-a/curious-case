lemma square_root_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "a = b"
  shows "sqrt (sum_list a) = sqrt (sum_list b)"
  using assms
proof -
  have "sum_list a = sum_list b" by (simp add: assms)
  thus ?thesis by simp
qed