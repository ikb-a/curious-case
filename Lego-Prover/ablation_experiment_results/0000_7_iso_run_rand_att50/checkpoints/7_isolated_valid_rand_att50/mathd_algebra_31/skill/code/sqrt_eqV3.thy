lemma sqrt_eq:
  fixes a b :: real
  assumes "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = sqrt b * sqrt b" using assms by (simp add: power2_eq_square)
  then show ?thesis by (metis assms real_sqrt_eq_iff)
qed