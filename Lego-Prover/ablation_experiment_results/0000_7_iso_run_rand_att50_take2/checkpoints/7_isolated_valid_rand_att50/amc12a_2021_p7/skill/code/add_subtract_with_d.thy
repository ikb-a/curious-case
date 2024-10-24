lemma add_subtract_with_d:
  fixes a b c d :: real
  assumes "a + b = c" "c > 0" "b > 0" "d > 0"
  shows "c - b + d = a + d"
proof -
  have "c - b + d = (a + b) - b + d" using assms(1) by simp
  also have "... = a + (b - b) + d" by simp
  also have "... = a + d" by simp
  finally show ?thesis .
qed