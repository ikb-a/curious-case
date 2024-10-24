lemma rearranging_equation:
  fixes x a b c :: real
  assumes "x > 0" "c = a + b / x"
  shows "a = c - b / x"
proof -
  have "c - b / x = a" using assms by (simp add: assms(2) algebra_simps)
  then show ?thesis by simp
qed