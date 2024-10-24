lemma division_property:
  fixes x a b :: real
  assumes "x > 0" "a / x = b"
  shows "a = b * x"
proof -
  have "a = b * x" using assms by auto
  thus ?thesis by simp
qed