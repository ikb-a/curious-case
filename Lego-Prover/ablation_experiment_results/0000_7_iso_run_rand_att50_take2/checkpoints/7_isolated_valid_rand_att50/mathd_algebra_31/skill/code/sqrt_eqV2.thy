lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "a = (sqrt a) ^ 2" using assms(1) by auto
  moreover have "b = (sqrt b) ^ 2" using assms(2) by auto
  ultimately show "a = b" using assms(3) by auto
qed