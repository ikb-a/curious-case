lemma add_subtract_generalized:
  fixes a b c d :: real
  assumes "a + b = c" "c - d = a" "b > 0" "d > 0"
  shows "c - b - d = a - d"
proof -
  have "c - b = a" using assms(1) by simp
  hence "c - b - d = a - d" using assms(3) by simp
  thus ?thesis by simp
qed