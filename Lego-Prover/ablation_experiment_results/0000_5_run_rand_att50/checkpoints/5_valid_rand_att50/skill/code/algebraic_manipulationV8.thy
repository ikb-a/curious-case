lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  from assms have "a - c = (b + c) - c" by simp
  also have "... = b + (c - c)" by (simp add: algebra_simps)
  also have "... = b + 0" by (simp add: algebra_simps)
  finally show "b = a - c" by (simp add: algebra_simps)
qed