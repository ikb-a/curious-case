lemma square_of_fraction_multi:
  fixes a b :: real
  assumes "b > 0" and "c > 0"
  shows "(a / (b * c))^2 = a^2 / (b^2 * c^2)"
proof -
  have "(a / (b * c))^2 = a^2 / (b * c)^2" by (simp add: power2_eq_square)
  also have "(b * c)^2 = b^2 * c^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed