lemma cancel_divide_specific:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c" "b > 0"
  shows "b = c * x - a * x"
proof -
  have "c * x = a * x + b" using cancel_divide_general[of x a b c] assms by auto
  thus ?thesis by simp
qed