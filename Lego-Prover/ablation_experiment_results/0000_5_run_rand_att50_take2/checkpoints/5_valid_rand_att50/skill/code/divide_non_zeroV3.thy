lemma divide_non_zero:
  fixes a b :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a / c = b / c"
proof -
  have "a / c = b / c" 
    by (simp add: assms(1) field_simps(1))
  thus ?thesis by simp
qed