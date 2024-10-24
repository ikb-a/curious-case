lemma square_difference_inequality:
  fixes a b :: real
  assumes "a > b"
  shows "(a - b)^2 > 0"
proof -
  have "a - b > 0" using assms by simp
  then show ?thesis by (simp add: power2_eq_square)
qed