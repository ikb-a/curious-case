lemma multiplicative_inverse_property_generalized:
  fixes a :: real and b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> b * (1 / b) = 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp add: divide_simps)
  moreover have "b * (1 / b) = 1" using assms(2) by (simp add: divide_simps)
  ultimately show ?thesis by simp
qed