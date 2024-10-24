lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a - c) * (b * d) = (b * a - b * c) * d"
proof -
  have "b * a - b * c = b * (a - c)" by sos
  then show ?thesis using assms by (simp add: field_simps)
qed