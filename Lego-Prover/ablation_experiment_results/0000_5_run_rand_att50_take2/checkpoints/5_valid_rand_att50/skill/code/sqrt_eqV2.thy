lemma sqrt_eq:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
proof -
  from assms show ?thesis by simp
qed