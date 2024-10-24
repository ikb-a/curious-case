lemma sqrt_property:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b" "sqrt a = b"
  shows "a = b^2"
proof -
  have "a = (sqrt a) ^ 2" using assms(1) by auto
  thus ?thesis using assms(3) by (simp only: power2_eq_square)
qed