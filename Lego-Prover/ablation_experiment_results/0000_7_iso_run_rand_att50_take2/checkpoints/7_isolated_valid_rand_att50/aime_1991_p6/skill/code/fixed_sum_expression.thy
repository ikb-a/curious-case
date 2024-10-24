lemma fixed_sum_expression:
  fixes a b :: nat
  assumes "a + b = 73"
  shows "b = 73 - a"
proof -
  have "b = 73 - a" using assms by simp
  then show ?thesis by simp
qed