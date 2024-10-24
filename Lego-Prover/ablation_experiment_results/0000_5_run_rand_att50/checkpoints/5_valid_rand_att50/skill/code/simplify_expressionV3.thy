lemma simplify_expression:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have left_side: "(a - b)^2 = a^2 - 2 * a * b + b^2"
    unfolding power2_diff by auto
  show ?thesis
    using left_side by simp
qed