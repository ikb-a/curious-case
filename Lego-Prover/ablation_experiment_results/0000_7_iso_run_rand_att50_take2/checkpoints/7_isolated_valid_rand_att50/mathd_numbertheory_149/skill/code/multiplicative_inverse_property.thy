lemma multiplicative_inverse_property:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: divide_simps)
  thus ?thesis .
qed