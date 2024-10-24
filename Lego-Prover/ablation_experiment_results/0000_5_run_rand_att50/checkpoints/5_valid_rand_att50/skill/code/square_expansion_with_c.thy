lemma square_expansion_with_c:
  fixes a b c :: real
  shows "(a - b + c)^2 = a^2 - 2*a*b + b^2 + 2*c*(a - b) + c^2"
proof -
  have lhs: "(a - b + c)^2 = (a - b)^2 + 2*(a - b)*c + c^2"
    by sos
  also have "(a - b)^2 = a^2 - 2*a*b + b^2"
    by sos
  ultimately show ?thesis by (simp add: algebra_simps)
qed