lemma division_property_extended:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "b / a * c = (b * c) / a"
proof -
  have "b / a * c = (b * (1 / a)) * c" using assms by (simp add: divide_simps)
  also have "... = (b * c) * (1 / a)" by (simp add: algebra_simps)
  finally show ?thesis using assms by (simp add: divide_simps)
qed