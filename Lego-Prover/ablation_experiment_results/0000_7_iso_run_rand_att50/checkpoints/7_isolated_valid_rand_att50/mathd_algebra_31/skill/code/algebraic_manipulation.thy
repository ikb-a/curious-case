lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a + b = c"
  shows "b = c - a"
proof -
  have "b = c - a" using assms by (simp add: add_diff_eq)
  thus ?thesis by simp
qed