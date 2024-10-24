lemma multiplicative_inverse_property:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b = 1 / a"
  shows "a * b = 1"
proof -
  have "a * b = a * (1 / a)" using assms(2) by simp
  thus ?thesis using assms(1) by auto
qed