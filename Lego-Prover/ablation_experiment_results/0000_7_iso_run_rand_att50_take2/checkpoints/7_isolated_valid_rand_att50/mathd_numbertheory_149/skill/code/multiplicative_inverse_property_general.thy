lemma multiplicative_inverse_property_general:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> (1 / a) * a = 1"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: divide_simps)
  moreover have "(1 / a) * a = 1" using assms by (simp add: divide_simps)
  ultimately show ?thesis by auto
qed