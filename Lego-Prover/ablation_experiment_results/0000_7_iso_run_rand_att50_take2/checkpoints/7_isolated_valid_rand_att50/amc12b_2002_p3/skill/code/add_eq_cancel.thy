lemma add_eq_cancel:
  fixes x a b :: real
  assumes "x > 0" "a + b = c"
  shows "a = c - b"
proof -
  have "a = c - b" using assms by (simp add: algebra_simps)
  thus ?thesis by simp
qed