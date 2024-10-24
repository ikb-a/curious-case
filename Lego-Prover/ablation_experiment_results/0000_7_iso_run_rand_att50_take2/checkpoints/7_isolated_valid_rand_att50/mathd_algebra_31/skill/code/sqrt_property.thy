lemma sqrt_property:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b" "sqrt a = b"
  shows "a = b^2"
proof -
  have "a = (sqrt a) ^ 2" using assms(1) by auto
  moreover have "b = sqrt a" using assms(3) by auto
  ultimately show "a = b^2" using power2_eq_square by auto
qed