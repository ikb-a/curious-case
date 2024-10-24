lemma manipulate_equation:
  fixes a b c d :: real
  assumes "a + c = b + d"
  shows "a - b = d - c"
proof -
  have "a + c - b = d" using assms by simp
  then show ?thesis by simp
qed