lemma square_root_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  from assms have "sqrt a = sqrt (a)" by simp
  then show ?thesis by (metis assms real_sqrt_ge_zero)
qed