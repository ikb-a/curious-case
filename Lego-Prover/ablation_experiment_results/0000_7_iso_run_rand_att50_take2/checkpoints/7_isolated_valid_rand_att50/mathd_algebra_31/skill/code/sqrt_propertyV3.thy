lemma sqrt_property:
  fixes a b :: real
  assumes "0 \<le> a" "0 \<le> b" "sqrt a = b"
  shows "a = b^2"
proof -
  have "a = (sqrt a) ^ 2" using assms(1) by auto
  also have "... = b^2" using assms(3) by (simp add: power2_eq_square)
  finally show "a = b^2" by simp
qed