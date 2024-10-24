lemma square_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "((a / b) ^ 2) = (a ^ 2) / (b ^ 2)"
    by (simp add: power2_eq_square)
  thus ?thesis by (simp add: assms)
qed