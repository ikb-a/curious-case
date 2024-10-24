theorem inequality_addition:
  fixes a b c :: real
  assumes "a < b" and "c > 0"
  shows "a + c < b + c"
proof -
  have "a + c - c < b + c - c" using assms by auto
  then show ?thesis by simp
qed