lemma simplify_expression:
  fixes a b c d :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have left_side: "(a - b)^2 = a^2 - 2*a*b + b^2"
    by (simp add: power2_diff)
  show ?thesis
    using left_side by simp
qed