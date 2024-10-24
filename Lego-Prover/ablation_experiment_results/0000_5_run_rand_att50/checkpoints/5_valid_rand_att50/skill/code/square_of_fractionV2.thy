lemma square_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "(a / b)^2 = (a * (1 / b))^2" by (simp add: power2_eq_square)
  also have "... = a^2 * (1 / b)^2" by (simp add: power2_eq_square)
  also have "... = a^2 / (b * b)" by sos
  also have "... = a^2 / b^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed