lemma multiply_positive:
  fixes x a b :: real
  assumes "x > 0" "a = b"
  shows "a * x = b * x"
proof -
  have "a * x = b * x" using assms by (simp add: assms(2))
  thus ?thesis by simp
qed