lemma scalar_multiplication_inverse:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
proof -
  have "a * (1 / a) = 1" using assms by (simp add: field_simps)
  thus ?thesis .
qed