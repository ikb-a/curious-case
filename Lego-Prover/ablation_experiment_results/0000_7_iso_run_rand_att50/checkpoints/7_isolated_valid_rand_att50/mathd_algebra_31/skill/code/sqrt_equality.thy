lemma sqrt_equality:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" using assms by auto
  then show ?thesis by simp
qed