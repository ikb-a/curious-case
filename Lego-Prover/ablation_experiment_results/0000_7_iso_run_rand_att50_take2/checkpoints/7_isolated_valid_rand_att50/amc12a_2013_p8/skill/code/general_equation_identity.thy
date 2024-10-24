lemma general_equation_identity:
  fixes x y :: real
  assumes "x + 2 / a = y + 2 / b"
  shows "x - y = (2 / b - 2 / a)"
proof -
  have "x + 2 / a - (y + 2 / b) = 0" using assms by simp
  then show ?thesis by simp
qed