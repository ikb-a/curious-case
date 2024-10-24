lemma simplify_sqrt:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b) * sqrt(1)" 
    by (metis mult_cancel_left2 real_sqrt_eq_1_iff real_sqrt_mult)
  then show ?thesis
    by auto
qed