lemma square_of_absolute_value:
  fixes a :: real
  shows "abs(a)^2 = a^2"
proof -
  have "abs(a) = sqrt(a^2)" by auto
  then show ?thesis by (simp add: power2_eq_square)
qed