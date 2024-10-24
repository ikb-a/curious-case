lemma division_property_with_nonzero:
  fixes a b c :: real
  assumes "a \<noteq> 0" "c > 0"
  shows "(b / a) * c = b * (c / a)"
proof -
  have "(b / a) * c = (b * c) / a" using assms by (simp add: divide_simps)
  also have "... = b * (c / a)" using assms by (simp add: divide_simps)
  finally show ?thesis .
qed