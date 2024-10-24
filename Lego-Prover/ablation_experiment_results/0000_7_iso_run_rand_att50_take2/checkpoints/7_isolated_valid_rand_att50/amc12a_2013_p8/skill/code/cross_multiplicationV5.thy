lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a - c) * (b * d) = d * (a * b - c * b)"
proof -
  have "b * d * (a - c) = d * (b * a - b * c)" by (simp add: field_simps)
  thus ?thesis by sos
qed