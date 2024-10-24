lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have "((a - sqrt b)^2) = a^2 - 2*a*sqrt b + (sqrt b)^2"
    by (smt (verit) power2_diff)
  then have "(sqrt b)^2 = b"
    by (metis assms(2) less_eq_real_def real_sqrt_pow2)
  then show ?thesis 
    using `((a - sqrt b)^2) = a^2 - 2*a*sqrt b + (sqrt b)^2` by auto
qed