lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
proof -
  have left_side: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + (sqrt b)^2"
    by (smt (verit) diff_add_eq power2_diff)
  have right_side: "(sqrt b)^2 = b"
    using assms(2) by auto
  then have final_eq: "(a - sqrt b)^2 = a^2 - 2*a*sqrt b + b"
    using left_side by simp
  thus ?thesis by simp
qed