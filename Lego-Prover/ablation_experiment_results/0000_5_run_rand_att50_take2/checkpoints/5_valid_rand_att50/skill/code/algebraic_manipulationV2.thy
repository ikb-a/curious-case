lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a = b + c"
  shows "a - c = b"
proof -
  have "a - c = (b + c) - c" using assms by simp
  also have "... = b + (c - c)" by (simp add: algebra_simps)
  also have "... = b + 0" by simp
  finally show "a - c = b" by simp
qed