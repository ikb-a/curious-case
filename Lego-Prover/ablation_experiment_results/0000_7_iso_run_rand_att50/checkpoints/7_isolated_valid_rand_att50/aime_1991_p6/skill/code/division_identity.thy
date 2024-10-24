lemma division_identity:
  fixes x a b c d :: "'a::field"
  assumes "x \<noteq> 0" "a + b / x = c" "d \<noteq> 0"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then show ?thesis by (simp add: assms(1) algebra_simps)
qed