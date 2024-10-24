lemma cross_multiply_difference:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" "a + b = c + d"
  shows "(a - c) * b * d = b * d * (a - c)"
proof -
  have "a + b - (c + d) = 0" using assms by simp
  then have "a - c = d - b" using assms by simp
  thus ?thesis by (simp add: algebra_simps)
qed