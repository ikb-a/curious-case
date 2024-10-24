lemma cross_multiply_inequality:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0" "a / b = c / d"
  shows "a * d = b * c"
proof -
  have "a * d = b * c" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed