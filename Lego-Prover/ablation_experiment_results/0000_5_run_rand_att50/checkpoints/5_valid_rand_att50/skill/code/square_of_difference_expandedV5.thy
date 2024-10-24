lemma square_of_difference_expanded:
  fixes a b c d :: real
  shows "(a - b) * (c - d) = a*c - a*d - b*c + b*d"
proof -
  have "(a - b) * (c - d) = a * c - a * d - b * c + b * d" 
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed