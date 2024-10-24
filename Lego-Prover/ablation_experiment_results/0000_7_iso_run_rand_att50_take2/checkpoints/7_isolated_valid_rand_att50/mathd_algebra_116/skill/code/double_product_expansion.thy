lemma double_product_expansion:
  fixes a b :: real
  shows "2 * a * b = (a + b)^2 - (a^2 + b^2)"
proof -
  have "(a + b)^2 = a^2 + 2 * a * b + b^2" by (simp add: power2_eq_square algebra_simps)
  then have "(a + b)^2 - (a^2 + b^2) = 2 * a * b" by simp
  thus ?thesis by simp
qed