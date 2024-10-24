lemma non_zero_multiplication:
  fixes a b c :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a * c = b * c"
proof -
  have "a * c = b * c"
  proof -
    from assms(1) have "b * c = a * c" by (simp add: assms(1))
    thus ?thesis by auto
  qed
  thus ?thesis by auto
qed