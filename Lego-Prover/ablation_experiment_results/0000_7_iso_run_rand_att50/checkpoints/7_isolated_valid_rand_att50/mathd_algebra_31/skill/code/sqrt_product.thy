theorem sqrt_product:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"
proof -
  have "sqrt (a * b) = sqrt a * sqrt b"
    by (metis real_sqrt_mult)
  thus ?thesis by simp
qed