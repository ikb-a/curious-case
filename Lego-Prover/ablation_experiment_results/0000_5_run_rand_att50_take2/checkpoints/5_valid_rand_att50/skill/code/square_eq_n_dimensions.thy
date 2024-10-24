lemma square_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = n" and "length b = n" and "a = b"
  shows "sum (\<lambda>i. a!i^2) {0..n-1} = sum (\<lambda>i. b!i^2) {0..n-1}"
proof -
  have "sum (\<lambda>i. a!i^2) {0..n-1} = sum (\<lambda>i. b!i^2) {0..n-1}"
    by (metis assms(3))
  thus ?thesis by simp
qed