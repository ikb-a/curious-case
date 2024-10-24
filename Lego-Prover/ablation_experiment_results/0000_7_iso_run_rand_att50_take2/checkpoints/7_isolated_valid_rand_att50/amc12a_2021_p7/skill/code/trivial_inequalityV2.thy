lemma trivial_inequality:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" by auto
  have "b^2 >= 0" by auto
  then show ?thesis using `a^2 >= 0` by (simp add: add_nonneg_nonneg)
qed