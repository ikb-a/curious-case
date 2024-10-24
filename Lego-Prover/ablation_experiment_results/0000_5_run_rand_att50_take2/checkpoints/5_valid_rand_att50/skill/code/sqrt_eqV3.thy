lemma sqrt_eq:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b"
    using assms by simp
  thus ?thesis by simp
qed