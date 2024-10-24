lemma algebraic_identity:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(-b)^2 = b^2" by simp
  have "2 * a * (-b) = -2 * a * b" by simp
  show ?thesis
    by (simp add: power2_eq_square algebra_simps)
qed