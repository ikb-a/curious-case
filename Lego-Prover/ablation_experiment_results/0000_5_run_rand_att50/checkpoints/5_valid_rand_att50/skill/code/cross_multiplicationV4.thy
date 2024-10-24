lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0" and "a - c \<noteq> 0"
  shows "(a - c) * b * d = d * (a - c) * b"
proof -
  have "b * (a - c) = b * (a - c)" by simp
  hence "b * (a - c) * d = d * (a - c) * b" by (simp add: field_simps)
  thus ?thesis by simp
qed