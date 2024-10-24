lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a - b) * (c - d) = a*c - a*d - b*c + b*d"
proof -
  have "a * (c - d) - b * (c - d) = a * c - a * d - b * c + b * d"
    by (simp add: algebra_simps)
  thus ?thesis by sos
qed