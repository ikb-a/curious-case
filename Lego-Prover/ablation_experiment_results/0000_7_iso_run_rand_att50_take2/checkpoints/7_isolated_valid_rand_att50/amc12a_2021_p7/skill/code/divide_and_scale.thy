lemma divide_and_scale:
  fixes x a b c :: real
  assumes "x > 0" "a * x = c - b"
  shows "a = (c - b) / x"
proof -
  have "a * x + b = c" using assms(2) by simp
  then show ?thesis using assms(1) by auto
qed