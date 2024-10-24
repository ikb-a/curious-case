lemma factor_double_square:
  fixes x :: real
  shows "2 * x^2 = (x * sqrt 2)^2"
proof -
  have "2 * x^2 = (sqrt 2 * x) * (sqrt 2 * x)" by (simp add: power2_eq_square)
  then show ?thesis by (auto simp: field_simps)
qed