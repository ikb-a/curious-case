lemma sqrt_unique:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0" and "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = sqrt b * sqrt b" using assms(3) by (simp add: power2_eq_square)
  then show ?thesis using assms(1) assms(2) by auto
qed