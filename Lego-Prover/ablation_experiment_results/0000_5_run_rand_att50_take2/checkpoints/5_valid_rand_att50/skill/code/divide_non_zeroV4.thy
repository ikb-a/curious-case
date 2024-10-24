lemma divide_non_zero:
  fixes a b :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a / c = b / c"
proof -
  have "a / c = (a * 1) / c" by (simp)
  also have "... = (a * (1 / c))" by (simp add: field_simps)
  finally have "a / c = a * (1 / c)" .
  have "b / c = (b * 1) / c" by (simp)
  also have "... = (b * (1 / c))" by (simp add: field_simps)
  finally have "b / c = b * (1 / c)" .
  have "b * (1 / c) = a * (1 / c)" using assms(1) by simp
  thus ?thesis using `a / c = a * (1 / c)` by (metis assms(1))
qed