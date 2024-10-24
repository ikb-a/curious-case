lemma square_eq_n_dimensional:
  fixes a b :: "real list"
  assumes "length a = n" and "length b = n" and "a = b"
  shows "sum (\<lambda>i. a ! i ^ 2) {0 ..< n} = sum (\<lambda>i. b ! i ^ 2) {0 ..< n}"
proof -
  have "sum (\<lambda>i. a ! i ^ 2) {0 ..< n} = sum (\<lambda>i. (b ! i) ^ 2) {0 ..< n}"
    using assms(3) by auto
  thus ?thesis by simp
qed