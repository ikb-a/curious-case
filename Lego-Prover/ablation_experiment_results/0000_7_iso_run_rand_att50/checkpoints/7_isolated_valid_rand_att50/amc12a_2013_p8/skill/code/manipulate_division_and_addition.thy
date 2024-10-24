lemma manipulate_division_and_addition:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c" "d = a * x + b"
  shows "d = c * x"
proof -
  have "d = a * x + b" using assms(3) by simp
  also have "... = c * x" using cancel_division_real_general assms by simp
  finally show ?thesis by simp
qed