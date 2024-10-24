lemma extended_trivial_inequality:
  fixes a b :: real and n :: nat
  shows "a^2 + b^2 + (a + b)^2 * (n - 1) >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  have "0 <= (a + b)^2" by (simp add: power2_eq_square)
  then show ?thesis using `0 <= a^2` `0 <= b^2` by (simp add: add_nonneg_nonneg)
qed