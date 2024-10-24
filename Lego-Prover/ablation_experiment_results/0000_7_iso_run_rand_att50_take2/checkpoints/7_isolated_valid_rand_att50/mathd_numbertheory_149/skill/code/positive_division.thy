lemma positive_division:
  fixes a b :: real
  assumes "a > 0" and "b > 0"
  shows "a / b > 0"
proof -
  have "a / b = a * (1 / b)" by (simp add: field_simps)
  then show ?thesis using assms by (simp add: field_simps)
qed