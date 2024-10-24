lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  from assms have "a >= 0" and "b >= 0" by simp_all
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed