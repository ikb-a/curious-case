lemma square_expansion_with_addition:
  fixes a b c d :: real
  shows "(a - b + c)^2 = (a - b)^2 + 2*(a - b)*c + c^2"
proof -
  have "((a - b) + c)^2 = (a - b)^2 + 2*(a - b)*c + c^2" 
    by sos
  thus ?thesis by simp
qed