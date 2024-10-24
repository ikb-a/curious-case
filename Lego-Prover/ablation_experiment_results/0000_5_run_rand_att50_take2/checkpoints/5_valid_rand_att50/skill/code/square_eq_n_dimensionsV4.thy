lemma square_eq_n_dimensions:
  fixes a b :: "real list"
  assumes "length a = length b" and "\<forall>i. a!i = b!i"
  shows "(\<Sum>i. a!i^2) = (\<Sum>i. b!i^2)"
proof -
  have "(\<Sum>i. a!i^2) = (\<Sum>i. (b!i)^2)"
    by (metis assms(2) sum.cong)
  thus ?thesis by simp
qed