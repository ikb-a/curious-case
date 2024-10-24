lemma sqrt_square:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x^2) = x"
proof -
  have "sqrt (x^2) = x" if "x >= 0" using that by (simp add: real_sqrt_eq_iff)
  then show ?thesis by (metis assms)
qed