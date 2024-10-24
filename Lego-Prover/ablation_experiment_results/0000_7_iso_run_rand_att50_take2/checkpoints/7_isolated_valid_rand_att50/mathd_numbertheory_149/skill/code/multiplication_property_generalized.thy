lemma multiplication_property_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (b / c) = (a * b) / c"
proof -
  have "a * (b / c) = a * (b * (1 / c))" by (simp add: divide_simps)
  also have "... = (a * b) * (1 / c)" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed