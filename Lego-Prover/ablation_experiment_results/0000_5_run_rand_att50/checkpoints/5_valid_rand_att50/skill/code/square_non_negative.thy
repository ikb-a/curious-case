lemma square_non_negative:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  from `a = b` have "b^2 = a * a" by sos
  thus "a^2 = b^2" by sos
qed