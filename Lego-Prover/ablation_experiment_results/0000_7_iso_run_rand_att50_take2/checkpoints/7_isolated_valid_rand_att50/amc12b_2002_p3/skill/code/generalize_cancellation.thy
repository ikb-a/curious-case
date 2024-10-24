lemma generalize_cancellation:
  fixes x a b c d :: real
  assumes "x \<noteq> 0" "c \<noteq> 0" "a + b / x = c"
  shows "(a + b / x) * d = c * d"
proof -
  have "(a + b / x) * d = c * d" using assms(3) by auto
  thus ?thesis by simp
qed