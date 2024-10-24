lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2" by (smt (verit) diff_add_eq power2_diff)
  also have "... = a^2 - 2*a*sqrt b + b" by (smt (verit) add_less_imp_less_left assms(2) less_eq_real_def real_less_lsqrt real_less_rsqrt real_sqrt_ge_zero)
  finally show ?thesis by simp
qed