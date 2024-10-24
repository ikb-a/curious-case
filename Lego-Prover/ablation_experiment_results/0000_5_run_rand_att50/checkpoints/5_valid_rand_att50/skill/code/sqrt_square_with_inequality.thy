lemma sqrt_square_with_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt a * sqrt a = a \<and> sqrt b * sqrt b = b"
proof -
  have "sqrt a * sqrt a = a" using assms(1) by simp
  moreover have "sqrt b * sqrt b = b" using assms(2) by simp
  ultimately show ?thesis by auto
qed