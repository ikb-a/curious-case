lemma simplify_square_root_expression:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) * sqrt(x^2) = x^2" by (metis abs_if_raw abs_of_neg abs_of_pos neg_0_less_iff_less power2_eq_square real_sqrt_abs real_sqrt_abs2 real_sqrt_eq_iff)
  also have "... = (if x \<ge> 0 then x^2 else (-x)^2)" 
    by auto
  also have "... = (if x \<ge> 0 then x else -x)^2" 
    by auto
  finally have "sqrt(x^2) * sqrt(x^2) = (if x \<ge> 0 then x else -x)^2" .
  then show ?thesis 
    using real_sqrt_mult by auto
qed