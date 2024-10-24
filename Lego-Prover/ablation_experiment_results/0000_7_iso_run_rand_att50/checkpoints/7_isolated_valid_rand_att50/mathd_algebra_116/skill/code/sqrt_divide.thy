lemma sqrt_divide:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) = sqrt(a) * sqrt(1 / b)" 
    by (metis mult.right_neutral real_sqrt_mult times_divide_eq_right)
  also have "... = sqrt(a) * (1 / sqrt(b))" 
    by (smt (verit) mult_cancel_left real_sqrt_divide real_sqrt_one)
  also have "... = sqrt(a) / sqrt(b)" 
    by (simp add: field_simps)
  finally show ?thesis by simp
qed