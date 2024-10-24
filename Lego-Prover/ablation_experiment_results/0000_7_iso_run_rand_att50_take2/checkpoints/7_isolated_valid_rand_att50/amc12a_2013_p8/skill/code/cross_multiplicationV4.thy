lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> d"
  shows "(a - b) * (c - d) = (a * c - a * d - b * c + b * d)"
proof -
  have "a * c - a * d - b * c + b * d = a * (c - d) - b * (c - d)"
    by (simp add: algebra_simps)
  then show ?thesis 
    by (simp add: field_simps)
qed