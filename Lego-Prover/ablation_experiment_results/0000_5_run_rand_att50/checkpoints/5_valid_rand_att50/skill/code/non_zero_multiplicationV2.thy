lemma non_zero_multiplication:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a * c = b * c"
proof -
  have "a * c = b * c"
  proof -
    from assms(1) have "b = a" by simp
    thus ?thesis 
      using assms(1) by (simp add: mult.commute)
  qed
  thus ?thesis by simp
qed