lemma square_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b)^2 = a^2 / b^2"
proof -
  have "(a / b) * (a / b) = a * a / (b * b)" by (simp add: field_simps)
  then show ?thesis by (simp add: power2_eq_square)
qed