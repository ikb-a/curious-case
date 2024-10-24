lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  from assms have "0 <= a" and "0 <= b" by auto
  then show "a + b >= 0" by (simp add: add_nonneg_nonneg)
qed