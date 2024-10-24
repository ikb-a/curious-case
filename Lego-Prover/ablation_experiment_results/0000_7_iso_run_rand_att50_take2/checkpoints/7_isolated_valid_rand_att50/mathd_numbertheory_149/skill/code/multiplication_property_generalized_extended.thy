lemma multiplication_property_generalized_extended:
  fixes a b c d :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0" "d \<noteq> 0"
  shows "(a * (b / c)) * d = (a * b * d) / c"
proof -
  have "a * (b / c) * d = a * (b * (1 / c)) * d" by (simp add: divide_simps)
  also have "... = (a * b) * (1 / c) * d" by (simp add: algebra_simps)
  also have "... = (a * b * d) * (1 / c)" by (simp add: algebra_simps)
  finally show ?thesis by (simp add: divide_simps)
qed