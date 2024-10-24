lemma non_negative_sum:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  from assms show ?thesis by simp
qed