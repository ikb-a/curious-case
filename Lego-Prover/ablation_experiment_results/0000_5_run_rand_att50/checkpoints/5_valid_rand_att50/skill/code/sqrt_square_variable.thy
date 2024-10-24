lemma sqrt_square_variable:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt (x * x) = abs x"
proof -
  have "sqrt (x * x) = sqrt (x^2)" by (simp add: power2_eq_square)
  then have "sqrt (x^2) = abs x" using real_sqrt_eq_iff[of "x^2"] by auto
  then show ?thesis by simp
qed