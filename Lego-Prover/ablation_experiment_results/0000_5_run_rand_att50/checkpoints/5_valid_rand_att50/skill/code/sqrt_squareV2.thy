lemma sqrt_square:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a * sqrt a = a" using assms by auto
  then show ?thesis by simp
qed