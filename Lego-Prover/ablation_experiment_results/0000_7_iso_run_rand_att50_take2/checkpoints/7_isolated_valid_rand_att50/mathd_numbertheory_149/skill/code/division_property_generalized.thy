lemma division_property_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "b / (a * c) = (b / a) * (1 / c)"
proof -
  have "b / (a * c) = b * (1 / (a * c))" by (simp add: divide_simps)
  also have "... = b * (1 / a) * (1 / c)" using assms by (simp add: divide_simps)
  finally show ?thesis by simp
qed