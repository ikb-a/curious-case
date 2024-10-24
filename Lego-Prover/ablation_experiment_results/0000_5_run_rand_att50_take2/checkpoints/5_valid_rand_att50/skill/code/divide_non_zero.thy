lemma divide_non_zero:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a / c = b / c"
proof -
  have "a / c = (b / c)" using assms(1) by (simp add: assms(2) field_simps)
  thus ?thesis by simp
qed