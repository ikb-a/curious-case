lemma division_and_multiplication_extended:
  fixes x a b c d :: real
  assumes "x > 0" "c = a + b / x" "d = c * x"
  shows "a = c - b / x \<and> d = c * x"
proof -
  have "a = c - b / x" using assms(2) by (simp add: algebra_simps)
  moreover have "d = c * x" using assms(3) by simp
  ultimately show ?thesis by blast
qed