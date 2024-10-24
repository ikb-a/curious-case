lemma add_subtract:
  fixes a b c :: real
  assumes "a + b = c" "b > 0"
  shows "c - b = a"
proof -
  have "c - b = (a + b) - b" using assms(1) by simp
  then show ?thesis by simp
qed