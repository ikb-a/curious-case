lemma non_negative_sqrt:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt(a) >= 0"
proof -
  have "sqrt(a) = sqrt(0 + a)" using assms by simp
  then show ?thesis by (metis assms real_sqrt_ge_zero)
qed