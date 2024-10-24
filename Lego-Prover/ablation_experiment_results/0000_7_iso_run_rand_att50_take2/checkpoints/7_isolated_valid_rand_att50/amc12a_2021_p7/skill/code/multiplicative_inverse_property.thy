lemma multiplicative_inverse_property:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * b) * (1 / (a * b)) = 1"
proof -
  have "1 = (a * b) * (1 / (a * b))" using assms by (simp add: field_simps)
  thus ?thesis by auto
qed