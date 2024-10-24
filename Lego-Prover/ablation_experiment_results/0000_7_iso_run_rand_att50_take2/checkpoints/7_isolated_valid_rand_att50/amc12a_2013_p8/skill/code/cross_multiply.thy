lemma cross_multiply:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a - c) * (b * d) = (d * (a - c)) * b"
proof -
  have "(a - c) * b * d = (d * (a - c)) * b" by (simp add: assms)
  thus ?thesis by auto
qed