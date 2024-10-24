lemma multiplicative_inverse_property:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "(1 / a) * a = 1"
proof -
  have "a * (1 / a) = 1" using nonzero_multiplicative_inverse assms by simp
  then show ?thesis using assms by (simp add: field_simps)
qed