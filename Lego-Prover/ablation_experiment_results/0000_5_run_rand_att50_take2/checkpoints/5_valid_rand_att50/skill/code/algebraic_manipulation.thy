lemma algebraic_manipulation:
  fixes a b c :: real
  assumes "a = b + c"
  shows "a - c = b"
proof -
  have "a - c = (b + c) - c" using assms by simp
  then show ?thesis by (simp add: algebra_simps)
qed