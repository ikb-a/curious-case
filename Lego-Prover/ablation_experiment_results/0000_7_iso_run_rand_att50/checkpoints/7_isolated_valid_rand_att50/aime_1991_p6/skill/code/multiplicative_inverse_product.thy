lemma multiplicative_inverse_product:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1 / (a * b) = (1 / a) * (1 / b)"
proof -
  have "1 / (a * b) = (1 / a) * (1 / b)" using assms by auto
  thus ?thesis .
qed