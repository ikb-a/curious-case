lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a + b = c"
  shows "b = c - a"
proof -
  have "c - a = (a + b) - a" using assms by simp
  also have "... = b" by (simp add: algebra_simps)
  finally show ?thesis by simp
qed