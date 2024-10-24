lemma double_square_extended:
  fixes x :: real
  shows "\<forall>n. 2 * (x^2 + n^2) = 2 * x^2 + 2 * n^2"
proof -
  have "2 * (x^2 + n^2) = 2 * x^2 + 2 * n^2" by (simp add: algebra_simps)
  thus ?thesis by auto
qed