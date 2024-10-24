lemma absolute_value_difference:
  fixes a b :: real
  shows "abs(a - b) = sqrt((a - b)^2)"
proof -
  have "abs(a - b)^2 = (a - b)^2" by (simp add: power2_eq_square)
  thus ?thesis by (simp add: power2_eq_square)
qed