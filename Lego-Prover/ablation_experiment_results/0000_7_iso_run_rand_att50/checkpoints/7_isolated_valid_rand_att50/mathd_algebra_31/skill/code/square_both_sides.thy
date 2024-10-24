lemma square_both_sides:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  also have "... = b * b" using assms by (simp)
  finally show "a^2 = b^2" by sos
qed