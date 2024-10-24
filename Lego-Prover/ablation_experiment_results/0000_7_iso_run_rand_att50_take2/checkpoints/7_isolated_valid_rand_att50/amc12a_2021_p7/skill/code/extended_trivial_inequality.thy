lemma extended_trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 >= 0" and "a^2 + b^2 + c^2 >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  then show "a^2 + b^2 >= 0" using `0 <= a^2` by (simp add: add_nonneg_nonneg)
  have "0 <= c^2" by (simp add: power2_eq_square)
  then show "a^2 + b^2 + c^2 >= 0" using `0 <= a^2` `0 <= b^2` by (simp add: add_nonneg_nonneg)
qed