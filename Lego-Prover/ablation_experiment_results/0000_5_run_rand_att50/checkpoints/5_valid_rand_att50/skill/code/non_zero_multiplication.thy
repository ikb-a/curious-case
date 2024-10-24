lemma non_zero_multiplication:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a * c = b * c"
proof -
  from assms(1) have "a * c = b * c" 
    by (simp add: assms(1))
  thus ?thesis by simp
qed