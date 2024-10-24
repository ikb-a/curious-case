lemma non_zero_multiplication:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
proof -
  have "b = (a * (b / a))" using assms by auto
  thus ?thesis by simp
qed