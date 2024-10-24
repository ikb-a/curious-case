lemma non_zero_multiplication:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a * c = b * c"
proof -
  have "a * c = b * c" using assms by (metis assms(1) mult.commute)
  thus ?thesis by simp
qed