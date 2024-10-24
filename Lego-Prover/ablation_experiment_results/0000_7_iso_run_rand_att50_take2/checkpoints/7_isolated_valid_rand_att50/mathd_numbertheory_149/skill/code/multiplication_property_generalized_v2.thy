lemma multiplication_property_generalized_v2:
  fixes a b c d :: real
  assumes "c \<noteq> 0" "d \<noteq> 0"
  shows "(a * b) / (c * d) = (a / c) * (b / d)"
proof -
  have "(a * b) / (c * d) = (a * b) * (1 / (c * d))" by (simp add: divide_simps)
  also have "... = (a * (1 / c)) * (b * (1 / d))" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed