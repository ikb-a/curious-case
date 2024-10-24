lemma linear_combination:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x = a * x + b" using cancel_div_generalized assms by simp
  then show ?thesis by simp
qed