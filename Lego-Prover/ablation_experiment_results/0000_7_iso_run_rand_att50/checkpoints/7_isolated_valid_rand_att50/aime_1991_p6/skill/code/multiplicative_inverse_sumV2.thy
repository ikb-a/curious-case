lemma multiplicative_inverse_sum:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) + b * (1 / b) = 1 + 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp)
  moreover have "b * (1 / b) = 1" using assms(2) by (simp)
  ultimately show ?thesis by simp
qed