lemma trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "0 <= a^2" by (simp add: power2_eq_square)
  have "0 <= b^2" by (simp add: power2_eq_square)
  then show ?thesis using `0 <= a^2` by (simp add: add_nonneg_nonneg)
qed