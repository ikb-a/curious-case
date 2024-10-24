lemma square_of_difference:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(-b + a)^2 = (-b)^2 + 2*(-b)*a + a^2" by (simp add: power2_eq_square algebra_simps)
  also have "... = b^2 - 2*b*a + a^2" by (simp add: power2_eq_square algebra_simps)
  finally show ?thesis by simp
qed