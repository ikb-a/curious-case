lemma square_expansion_with_conditions:
  fixes a b c :: real
  assumes "a > 0" "b > 0" "c > 0"
  shows "(a - b)^2 + (b - c)^2 = a^2 - 2*a*b + b^2 + b^2 - 2*b*c + c^2"
proof -
  have "(a - b)^2 + (b - c)^2 = (a^2 - 2*a*b + b^2) + (b^2 - 2*b*c + c^2)"
    by sos
  thus ?thesis by simp
qed