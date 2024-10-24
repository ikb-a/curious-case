lemma square_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = length b" "(\<forall>i. a ! i = b ! i)"
  shows "sum (\<lambda>i. (a ! i)^2) {0..length a - 1} = sum (\<lambda>i. (b ! i)^2) {0..length b - 1}"
proof -
  have "sum (\<lambda>i. (a ! i)^2) {0..length a - 1} = sum (\<lambda>i. (b ! i)^2) {0..length b - 1}" 
    using assms by auto
  then show ?thesis by simp
qed