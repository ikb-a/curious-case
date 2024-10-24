lemma sqrt_eq:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a ^ 2 = a" using assms(1) by auto
  moreover have "sqrt b ^ 2 = b" using assms(2) by auto
  moreover have "sqrt a ^ 2 = sqrt b ^ 2" using assms(3) by simp
  ultimately show "a = b" by (metis power2_eq_iff)
qed