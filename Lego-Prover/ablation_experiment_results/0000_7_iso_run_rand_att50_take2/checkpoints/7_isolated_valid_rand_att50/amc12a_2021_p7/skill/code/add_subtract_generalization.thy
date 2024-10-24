lemma add_subtract_generalization:
  fixes a b c :: real
  assumes "a + b = c" "b > 0"
  shows "c - b = a" and "c = a + b"
proof -
  have "c - b = (a + b) - b" using assms(1) by simp
  then show "c - b = a" by simp
  then show "c = a + b" using assms(1) by simp
qed