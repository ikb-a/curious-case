lemma division_property:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "1 / (a * b) = (1 / a) * (1 / b)"
proof -
  have "1 / (a * b) = 1 * (1 / (a * b))" by (simp add: divide_simps)
  also have "... = (1 / a) * (1 / b)" using assms by (simp add: divide_simps)
  finally show ?thesis by simp
qed