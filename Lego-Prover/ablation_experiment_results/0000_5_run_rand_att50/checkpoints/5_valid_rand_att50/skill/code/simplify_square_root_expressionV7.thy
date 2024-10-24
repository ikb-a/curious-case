lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have expansion: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2"
    by (smt (verit) diff_add_eq power2_diff)
  have right_side: "(sqrt b)^2 = b"
    by (metis assms(2) nle_le real_sqrt_pow2 verit_comp_simplify1(3))
  then have "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
    using expansion by simp
  thus ?thesis by simp
qed