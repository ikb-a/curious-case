lemma square_expression_real:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b)^2 = (a + (-b))^2" by simp
  then have "... = a^2 + 2 * a * (-b) + (-b)^2" by (simp add: power2_eq_square algebra_simps)
  then show ?thesis by (simp add: power2_eq_square algebra_simps)
qed