lemma multiplicative_inverse_sum:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1 / (a + b) = (1 / a) * (1 / (1 + b / a))"
proof -
  have "1 / (a + b) = 1 / (a * (1 + b / a))" using assms by sos
  also have "... = (1 / a) * (1 / (1 + b / a))" by (simp add: field_simps)
  finally show ?thesis .
qed