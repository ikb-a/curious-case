lemma simplify_expression:
  fixes a b c d :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have left_side: "(a - b)^2 = (a * a) - 2 * a * b + (b * b)"
    by sos
  show ?thesis
    using left_side by sos
qed