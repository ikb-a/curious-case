lemma square_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = length b" "a = b"
  shows "sum (\<lambda>i. a ! i ^ 2) (set (upt 0 (length a))) = sum (\<lambda>i. b ! i ^ 2) (set (upt 0 (length b)))"
proof -
  have "sum (\<lambda>i. a ! i ^ 2) (set (upt 0 (length a))) = sum (\<lambda>i. b ! i ^ 2) (set (upt 0 (length a)))"
    by (metis assms(2))
  then show ?thesis using assms(1) by simp
qed