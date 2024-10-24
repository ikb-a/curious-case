lemma sqrt_sum_positive:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt (a + b) > 0"
proof -
  have "a + b > 0" using assms by auto
  then show ?thesis by auto
qed