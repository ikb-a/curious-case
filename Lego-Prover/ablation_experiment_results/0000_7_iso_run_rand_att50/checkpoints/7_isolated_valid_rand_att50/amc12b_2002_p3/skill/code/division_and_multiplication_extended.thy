lemma division_and_multiplication_extended:
  fixes x a b c d :: real
  assumes "x > 0" "c = a + b / x" "d = b / x"
  shows "a = c - d"
proof -
  have "d = b / x" using assms(3) by simp
  then show ?thesis using assms(2) by (simp add: algebra_simps)
qed