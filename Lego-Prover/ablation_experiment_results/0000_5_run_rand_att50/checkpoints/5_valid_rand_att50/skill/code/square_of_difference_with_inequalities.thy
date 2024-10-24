lemma square_of_difference_with_inequalities:
  fixes a b :: real
  assumes "a > b"
  shows "(a - b)^2 > 0"
proof -
  have "a - b > 0" using assms by simp
  hence "(a - b)^2 > 0" by (simp add: power2_eq_square)
  thus ?thesis by simp
qed